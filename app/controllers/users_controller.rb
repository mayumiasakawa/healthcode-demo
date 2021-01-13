class UsersController < ApplicationController
  def show
    @overviews = Overview.includes(:user)
    @birthday =  Overview.includes(:user).order(birthday: :desc).where(params[:id])
    @allergy =  Overview.includes(:user).order(allergy: :desc).where(params[:id])

  end
end
