class UsersController < ApplicationController
  def show
    @overviews = Overview.includes(:user).find(params[:id])
    @birthday =  Overview.includes(:user).order(birthday: :desc).where(params[:id])
    @allergy_type =  @overviews.allergy_type
    @alcohol =  Overview.includes(:user).order(alcohol: :desc).where(params[:id])
    @cigarette =  Overview.includes(:user).order(cigarette: :desc).where(params[:id])

  end
end
