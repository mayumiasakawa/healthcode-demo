class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :move_to_index

  def show
      @overview = Overview.includes(:user).where(params[:id])
      if @overview.present?
        @birthday =  Overview.includes(:user).order(birthday: :desc).where(params[:id])
        @allergy =  @overview.allergy
        @allergy_type =  @overview.allergy_type
        @allergy_symptom =  @overview.allergy_symptom
        @alcohol = @overview.alcohol
        @alcohol_frequency = @overview.alcohol_frequency
        @alcohol_amount = @overview.alcohol_amount
        @cigarette =  @overview.cigarette
        @cigarette_amount =  @overview.cigarette_amount
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
