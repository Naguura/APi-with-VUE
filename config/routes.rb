Rails.application.routes.draw do
  #get 'signup/create'

  namespace :api do
  	namespace :v1 do
  		resources :records
  		resources :artists
  	end
  end
  #recordstore.com/api/v1/records
  root to: "home#index"
  
  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create
  post 'signup', controller: :signup, action: :create
  post 'signin', controller: :signin, action: :destroy
end
