ActionController::Routing::Routes.draw do |map|
  map.resources :csos, :path_prefix => ':locale'
  map.resources :sessions

  map.with_options :path_prefix => ':locale/admin' do |m|
    m.namespace :admin do |admin|
      admin.resources :annual_budgets
      admin.resources :funding_sources
      admin.resources :membership_types
      admin.resources :operational_areas
      admin.resources :registration_acts
      admin.resources :sector_focuses
      admin.resources :target_groups
    end
  end

  map.root :controller => 'csos', :locale => 'en'

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  map.connect ':locale/:controller/:action/:id'
  map.connect ':locale/:controller/:action/:id.:format'
end
