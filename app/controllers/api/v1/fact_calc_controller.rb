module Api
    module v1
      class FactorCalcController < ApplicationController
  
        def calculate
          @number = params[:id].fact
        end
  
        private
        
        def fact
          (1..self).reduce(:*) || 1
        end
  
      end
    end    
  end