class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @overview = user.overviews
  end
end
