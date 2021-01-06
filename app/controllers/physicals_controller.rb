class PhysicalsController < ApplicationController
  def new
    @physical = Physical.new
  end

  def create
    @physical = Physical.create(physical_params)
    if @physical.valid?
      @physical.save
      redirect_to root_path
    else
      render new_overview_physicalfinding_path
    end
  end

  private
  
  def physical_params
    params.require(:physical).permit(:physicalfinding_measuring_date, :height, :weight, :bmi, :abdominal_circumference).merge(user_id: current_user.id, overview_id: params[:overview_id])
  end
end
