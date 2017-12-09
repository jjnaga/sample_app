class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def show
    #Declare a user, and set it to User.find(id), with 'id' being a number.
    @user = User.find(params[:id])
  end
  def index
  end
end
