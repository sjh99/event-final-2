Rails.application.routes.draw do
  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  root to: "cities#index"

  # Routes for the City resource:
  # CREATE
  get "/cities/new", :controller => "cities", :action => "new"
  post "/create_city", :controller => "cities", :action => "create"

  # READ
  get "/cities", :controller => "cities", :action => "index"
  get "/cities/:id", :controller => "cities", :action => "show"

  # UPDATE
  get "/cities/:id/edit", :controller => "cities", :action => "edit"
  post "/update_city/:id", :controller => "cities", :action => "update"

  # DELETE
  get "/delete_city/:id", :controller => "cities", :action => "destroy"
  #------------------------------

  # Routes for the Event_listing resource:
  # CREATE
  get "/event_listings/new", :controller => "event_listings", :action => "new"
  post "/create_event_listing", :controller => "event_listings", :action => "create"

  # READ
  get "/event_listings", :controller => "event_listings", :action => "index"
  get "/event_listings/:id", :controller => "event_listings", :action => "show"

  # UPDATE
  get "/event_listings/:id/edit", :controller => "event_listings", :action => "edit"
  post "/update_event_listing/:id", :controller => "event_listings", :action => "update"

  # DELETE
  get "/delete_event_listing/:id", :controller => "event_listings", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
