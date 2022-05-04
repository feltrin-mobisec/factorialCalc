module Api
  module V1
    module Operations
      class JsonInputFactorialController < ApplicationController
        def calculate
          #$VARIAGLOB = params[:number]
          #byebug
          # check if number is integer positive
          if (params[:number].is_a? Integer) && params[:number] >= 0
          #if params[:number] !~ /\D/
          #if params[:number] =~ /^[0-9]\d*$/
          #if params[:number] =~ /^\+?(0|[1-9]\d*)$/
            n = params[:number].to_i

            if n < 13
              n = factorial(n)
              render json: { "result": n}
            else n >= 13
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