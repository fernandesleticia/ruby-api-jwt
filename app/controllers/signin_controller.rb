class SigninController < ApplicationController
  before_action :authorize_access_request!, only: [:destroy]
  
  def create
    user = User.find_by!(email: params[:email])
  end
end
