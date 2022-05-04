Rails.application.routes.draw do

  # get '/factorials/:number', to: 'factorials#calculate', constraints: { number: /[^\/]+/ }, :constraints => { number: /.*/}
  # get '/json_factorials', to: 'json_factorials#calculate'
  namespace :api do
    namespace :v1 do
      namespace :operations do
        get '/factorial/:number', to: 'factorial#calculate', constraints: { number: /[^\/]+/ }, :constraints => { number: /.*/}
        get '/json_input_factorial', to: 'json_input_factorial#calculate'
      end
    end
  end

end
