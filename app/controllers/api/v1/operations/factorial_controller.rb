module Api
  module V1
    module Operations
      class FactorialController < ApplicationController
        def calculate
            # check if number is integer and positive
            #if params[:number] !~ /\D/
            if params[:number] =~ /^[0-9]\d*$/
              n = params[:number].to_i
              if n < 13
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

# check if result is over a 32 bit machine capacity with unsigned integer
# n > (2^32)-1 ? (render json: { "result": n}) : (error(406, "The value requested is too big"))