Rails.application.routes.draw do

  post 'cities/:city_id/posts/:id', to: 'comments#create'

  devise_for :users
  root to: 'cities#index'

  resources :cities do
  resources :posts
  end

end
