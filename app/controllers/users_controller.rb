class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @prototype = @user.prototypes.order(created_at: "DESC")
    # @prototype = Prototype.all.order(created_at: "DESC")
  end

  def index
    @users = User.all
  end

end
