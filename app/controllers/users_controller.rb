class UsersController < ApplicationController
  
  before_filter :authenticate_user! #makes sure the user is logged in
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end


end
