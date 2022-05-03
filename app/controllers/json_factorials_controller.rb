require 'byebug'
class JsonFactorialsController < ApplicationController

  def calculate
    # check if number is integer and positive
    if params[:number] !~ /\D/
      n = params[:number].to_i
      if n < 46
        i = 1
        while i < params[:number].to_i
          n = i * n
          i += 1
        end
        n > 0 ? (render json: { "result": n}) : (render json: { "result": 1})
      else
        error(406, "The value requested is too big")
      end
    else
      error(400, "The value is negative or not an integer")
    end
     
  end

end