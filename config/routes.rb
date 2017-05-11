Rails.application.routes.draw do
  devise_for :users
  
  get '/home' => 'home#index'
  post '/home' => 'home#show'
  
  get '/quiz' => 'quizes#index' # index or show?
  get '/dashboard' => 'dashboards#index' # user's homepage
  get '/dashboard/settings' => 'settings#index' # basic account information and settings page

end
