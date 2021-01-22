class UsersController < ApplicationController
  def show
    @overviews = Overview.includes(:user).find(params[:id])
    @birthday =  Overview.includes(:user).order(birthday: :desc).where(params[:id])
    @allergy =  @overviews.allergy
    @allergy_type =  @overviews.allergy_type
    @alcohol = @overviews.alcohol
    @alcohol_frequency = @overviews.alcohol_frequency
    @alcohol_amount = @overviews.alcohol_amount
    @cigarette =  @overviews.cigarette
    @cigarette_amount =  @overviews.cigarette_amount
  end
end
