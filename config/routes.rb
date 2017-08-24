Rails.application.routes.draw do
  root :to => 'home#index'
<<<<<<< HEAD
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
=======
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
      
  get '/home' => 'home#index'
  # post '/home' => 'home#show
  get '/mydashboard' => 'dashboards#index' # user's homepage
  get '/mydashboard/settings' => 'settings#index' # basic account information and settings page
  get '/mydashboard/account' => 'accounts#show'

  get '/mydashboard/explore' => 'menus#index'
  get '/mydashboard/menus/weeklymenu' => 'menus#show'
  # custom menu
  get '/mydashboard/menus/new' => 'menus#new'

  # menu planner
  get '/mydashboard/menus/planner' => 'planners#index'

  # New Recipe
  get '/mydashboard/menus/recipes/new' => 'recipes#new'
>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244


  get '/quiz' => 'quizes#new'
  post '/quiz' => 'quizes#create'

end
