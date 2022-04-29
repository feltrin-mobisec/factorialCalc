Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope '/api' do
    scope '/v1' do
      scope '/factor_calc' do
        get '/' => 'factor_calc#calculate'
      end
    end
  end
end
