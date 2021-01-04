class PhysicalfindingMeasuringsController < ApplicationController

  def new
    @physicalfindingmeasuring = PhysicalfindingMeasuring.new
  end

  def create
    @physicalfindingmeasuring = PhysicalfindingMeasuring.create(overview_params)
    if @physicalfindingmeasuring.valid?
      @physicalfindingmeasuring.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def overviews_pamars
   params.require(:physicalfindingmeasuring).permit(:physicalfinding_measuring_date, :height, :weight, :abdominal_circumference,:bmi).merge(user_id: current_user.id, oveivew_id: params[:overview_id])
  end
end
