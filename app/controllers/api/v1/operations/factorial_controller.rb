module Api
  module V1
    module Operations
      class FactorialController < ApplicationController
        def calculate
            # check if number is integer and positive
            if params[:number] !~ /\D/
              n = params[:number].to_i
              if n < 46
                n = factorial(n)
                render json: { "result": n}
              else
                error(406, "The value requested is too big")
              end
            else
              error(400, "The value is negative or not an integer")
            end
             
          end
        
        private
        
        def factorial(n)
          return 1 if n < 2
          n * factorial(n-1)
        end
        
      end

    end
  end    
end