class PhysicalfindingMeasuringsController < ApplicationController

  def new
    @physicalfindingmeasuring = PhysicalfindingMeasuring.new
  end

  def create
    @physicalfindingmeasuring = PhysicalfindingMeasuring.create(physicalfindingmeasuring_params)
    if @physicalfindingmeasuring.valid?
      @physicalfindingmeasuring.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def physicalfindingmeasuring_params
    params.permit(:physicalfinding_measuring_date, :height, :weight, :abdominal_circumference, :bmi, :physicalfinding_measuring).merge(user_id: current_user.id, overview_id: params[:overview_id])
  end
end
