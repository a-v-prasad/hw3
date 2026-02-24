Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Travel Log resources - places & entries
  resources "places"
  resources "entries"

  # Root route shows list of places (from assignment hint)
   get("/", { :controller => "places", :action => "index" })
  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })

end
