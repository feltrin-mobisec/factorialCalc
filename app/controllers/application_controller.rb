class ApplicationController < ActionController::API
  
  def error(status, message)
    render :json => message, :status => status
  end

end
