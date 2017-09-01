Rails.application.routes.draw do

<<<<<<< HEAD
  post 'cities/:city_id/posts/:id', to: 'comments#create'

=======
#users will still  root to the cities index
>>>>>>> comments
  devise_for :users
  root to: 'cities#index'

  resources :cities do
  resources :posts
  end

end
