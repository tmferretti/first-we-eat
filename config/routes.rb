Rails.application.routes.draw do
  root :to => 'home#index'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  get '/test' => 'menus#test'
  get '/home' => 'home#index'
  # post '/home' => 'home#show
  
  get '/account-details' => 'accounts#show'
  get '/account-settings' => 'settings#index'
  get '/explore' => 'explorations#new'
  post '/explore' => 'explorations#create'
  get '/menus/weekly-menu' => 'menus#show'
  # custom menu
  get '/menus/new' => 'menus#new'

  # menu planner
  get '/menus/planner' => 'planners#index'

  # New Recipe
  get '/menus/recipes/new' => 'recipes#new'


  get '/quiz' => 'quizes#new'
  post '/quiz' => 'quizes#create'

end
