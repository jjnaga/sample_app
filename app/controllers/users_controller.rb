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

  def create
    @user = User.new(user_params) # Not the final implemntation!
    if @user.save
      # Handle a succesful save.
    else 
      render 'new'
    end
  end

  #Set params that is needed to allow User.new().
  #Requires the user hash.
  private def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
