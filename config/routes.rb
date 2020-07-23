Rails.application.routes.draw do
  root to: 'home#index'
  get '/home/input_data', to: 'home#input_data', as: :input_data
end
