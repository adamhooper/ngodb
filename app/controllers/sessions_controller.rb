class SessionsController < ApplicationController
  def create
    if params[:password] == password
      session[:admin] = true
    end

    respond_to do |format|
      format.html do
        if session[:admin] == true
          flash[:notice] = "Successfully logged in"
          redirect_to root_path
        else
          flash[:error] = "Invalid password. Try again."
          render :action => :new
        end
      end
    end
  end

  def destroy
    reset_session

    respond_to do |format|
      format.html do
        flash[:notice] = "Successfully logged out"
        redirect_to root_path
      end
    end
  end

  private

  def password
    @@password ||= File.open(File.dirname(__FILE__) + '/../../config/admin-password').read.strip
  end
end
