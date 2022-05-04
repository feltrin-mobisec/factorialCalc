require 'byebug'
class JsonFactorialsController < ApplicationController

  def calculate
    $VARIAGLOB = params[:number]
    byebug
    # check if number is integer positive
    #if params[:number] =~ /^[0-9]\d*$/
    if params[:number] =~ /^\+?(0|[1-9]\d*)$/
      n = params[:number].to_i
      if n < 46
        n = factorial(n)
        # i = 1
        # while i < params[:number].to_i
        #   n = i * n
        #   i += 1
        # end
        # n > 0 ? (render json: { "result": n}) : (render json: { "result": 1})
        render json: { "result": n}
      else n > 46
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