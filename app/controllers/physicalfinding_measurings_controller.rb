class PhysicalfindingMeasuringsController < ApplicationController

  def new
    @physicalfindingmeasuring = PhysicalfindingMeasuring.new
  end

  def create
    binding.pry
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
    params.require(:physicalfinding_measuring).permit(:physicalfinding_measuring_date, :height, :weight, :abdominal_circumference, :bmi).merge(user_id: current_user.id, overview_id: params[:overview_id])
  end
end
