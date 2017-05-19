Rails.application.routes.draw do
  root :to => 'home#index'
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


  get '/quiz' => 'quizes#new'
  post '/quiz' => 'quizes#create'

end
