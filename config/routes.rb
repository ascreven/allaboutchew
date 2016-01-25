Rails.application.routes.draw do
  root to: 'pets#index'
  resources :pets
  get '/test_ajax', to: 'pets#test_ajax'
end
