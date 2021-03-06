class ApplicationController < ActionController::Base
  before_action :authenticate_request, if: -> { is_json? }, :except => [:authenticate]
  
  attr_reader :current_user 

  def is_json?
    request.format == :json
  end

  private 

    def authenticate_request 
      @current_user = AuthorizeApiRequest.call(request.headers).result 
      render json: { error: 'Not Authorized' }, status: 401 unless @current_user 
    end

end
