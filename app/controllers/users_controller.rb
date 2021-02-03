class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :move_to_index

  def show
      @overview = Overview.includes(:user)
      if @overview.present?
        @overviews = Overview.includes(:user).find(params[:id])
        @birthday =  Overview.includes(:user).order(birthday: :desc).where(params[:id])
        @allergy =  @overviews.allergy
        @allergy_type =  @overviews.allergy_type
        @allergy_symptom =  @overviews.allergy_symptom
        @alcohol = @overviews.alcohol
        @alcohol_frequency = @overviews.alcohol_frequency
        @alcohol_amount = @overviews.alcohol_amount
        @cigarette =  @overviews.cigarette
        @cigarette_amount =  @overviews.cigarette_amount
      end
  end

  def edit
    @overview = Overview.includes(:user).find(params[:id])
  end

  private

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
