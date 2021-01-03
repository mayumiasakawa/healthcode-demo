class PhysicalfindingMeasuringsController < ApplicationController

  def new
    @overview = Overview.new
  end

  def create
    Overviews.create(overviews_pamars)
  end

  private

  def overviews_pamars
   params.require(:overview).permit(:physicalfinding_measuring_date, :weight, :height, :abdominal_circumference,:bmi).merge(user_id: current_user.id, tweet_id: params[:overview_id])
  end
end
