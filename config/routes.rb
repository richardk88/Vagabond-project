Rails.application.routes.draw do

#users will still  root to the cities index
  devise_for :users
  root to: 'cities#index'

  resources :cities do
  resources :posts
  end

end
