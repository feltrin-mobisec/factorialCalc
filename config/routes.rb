Rails.application.routes.draw do

  get '/factorials/:number', to: 'factorials#calculate', constraints: { number: /[^\/]+/ }, :constraints => { number: /.*/}
  get '/json_factorials', to: 'json_factorials#calculate'

end
