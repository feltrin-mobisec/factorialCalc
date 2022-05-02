Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get 'number', to: "calculations#number"
  # post "number", to: "calculations#number"
  
  
  # get '/calculations/:id', to: 'calculations#show'
  get '/factorials/:number', to: 'factorials#calculate'



  # scope '/api' do
  #   scope '/v1' do
  #     get '/factor_calc/number', to: 'factor_calc#number'
  #   end
  # end
end
