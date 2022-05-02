require 'byebug'
class FactorialsController < ApplicationController

  def calculate
    n = params[:number].to_i
    if (n.is_a? Integer) && n > 0 && n <46
      # i = 1
      # while i < n
      #   n = n * i
      #   i += 1
      # end
      # render json: { "result": n}  
      #n= (1..n).reduce(:*) || 1
      #render json: { "result": n}  
      
      i = 1
      while i < params[:number].to_i
        n = i * n
        i += 1
      end
      render json: { "result": n}  
    elsif n > 45
      error(406, "The value requested is too big")
    else
      error(400, "The value is negative or not an integer")
    end
     
  end



  # def params
  #   @number = params.require(:data)
  # end

  # def resp_body
  #   {
  #     factorial: @number.fact
  #   }
  # end



  # attr_reader :number
  # private :number

  # def initialize(number)
  #   @number = number
  # end

  # def get_result!
  #   @number = @number.fact
  #   return @number
  # end

  private
  
  def fact
    (1..self).reduce(:*) || 1
  end

end