require 'byebug'
class FactorialsController < ApplicationController

  def calculate
    n = params[:number].to_i
    if (n.is_a? Integer) && n > 0 && n <46 

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

end