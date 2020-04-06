Rails.application.routes.draw do

  get 'preference/index'

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs
  
  namespace :admin do 
    resources :preferences
  end

end
