# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_init_gettext :set_locale_from_params
  init_gettext 'ngodb'

  layout 'public'

  helper :all # include all helpers, all the time
  helper_method :admin?

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'bbbc732414d8dbcdf9df88607d9ae68a'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  filter_parameter_logging :password

  def authorize
    unless admin?
      flash[:error] = "Unauthorized access"
      redirect_to root_path
      false
    end
  end

  def admin?
    session[:admin] == true
  end

  private

  def set_locale_from_params
    set_locale params[:locale] || 'en'
  end
end
