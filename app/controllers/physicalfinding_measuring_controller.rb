class PhysicalfindingMeasuringController < ApplicationController

  def new
    @overview = Overview.new
  end

  def create
    Overviews.create(overviews_pamars)
  end

  private

  def overviews_pamars
   @overview_physicalfinding_measurings = params.require(:overview).permit(:physicalfinding_measuring_date, :weight, :height, :abdominal_circumference,:bmi,).merge(user_id: current_user.id, overview_id: params[:overview_id])
   @overview_physicalfinding_measurings = Overview.includes(:user).where.not(physicalfinding_measuring_date:nil).order(physicalfinding_measuring_date: :desc).where(params[:id])

  end
end
