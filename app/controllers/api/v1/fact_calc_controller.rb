# module Api
#     module v1
#       class FactorCalcController < ApplicationController
  
#         def calculate
#           @number = params[:number].fact
#           return @number
#         end
  
#         private
        
#         def fact
#           (1..self).reduce(:*) || 1
#         end
  
#       end
#     end    
#   end