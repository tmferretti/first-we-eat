Rails.application.routes.draw do
  devise_for :users
  
  get '/' => 'home#index'
  post '/' => 'home#show'
end
