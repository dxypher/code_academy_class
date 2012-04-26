CodeAcademyClass::Application.routes.draw do
  root :to => "static#index"
  get "hello", :controller => "static", :action => "index"
  get "movies", :controller => "static", :action => "movies"
  get "microsoft", :controller =>"static", :action => "microsoft"
  get "google", :controller =>"static", :action => "google"
  get "twitter", :controller =>"static", :action => "twitter"
  get "restaurants", :controller => "dynamic", :action => "restaurants"
  get "restaurants/recommend", :controller => "dynamic", :action => "recommend"

  post "restaurants/create", :controller => "dynamic",	:action => "create"
end
