class OverviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :move_to_index, except: [:index]
  before_action :set_overview, only: [:edit, :update, :destroy]
  

  def index
    @overview = Overview.new
    @overviews = Overview.includes(:user).order("created_at DESC")
    @physical = Physical.includes(:user).where.not(physicalfinding_measuring_date:nil).order(physicalfinding_measuring_date: :desc).where(params[:id])
    @blood = Blood.includes(:user).where.not(blood_urine_test_date:nil).order(blood_urine_test_date: :desc).where(params[:id])
    @medicalcare = Medicalcare.includes(:user).where.not(medical_care_date:nil).order(medical_care_date: :desc).where(params[:id])
  end

  def new
  end

  def create
    @overview = Overview.create(overview_params)
    if @overview.valid?
      @overview.save
      redirect_to root_path
    else
      render overviews_path
    end
  end


  private

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def overview_params
    params.require(:overview).permit(:birthday, :allergy, :allergy_type, :cigarette, :cigarette_amount, :alcohol, :alcohol_amount).merge(user_id: current_user.id)
  end

  def set_overview
    @overview = Overview.includes(:user).find(params[:id])
  end

  def set_chart
    if user_signed_in?
      physicalfinding_measuring_date = PhysicalfindingMeasuring.where.not(physicalfinding_measuring_date:nil).where(user_id: current_user.id).order(physicalfinding_measuring_date: :asc).pluck(:physicalfinding_measuring_date)
      weight = PhysicalfindingMeasuring.where.not(physicalfinding_measuring_date:nil).where(user_id: current_user.id).order(physicalfinding_measuring_date: :asc).pluck(:weight)
      bmi = PhysicalfindingMeasuring.where.not(physicalfinding_measuring_date:nil).where(user_id: current_user.id).order(physicalfinding_measuring_date: :asc).pluck(:bmi)
      abdominal_circumference = PhysicalfindingMeasuring.where.not(physicalfinding_measuring_date:nil).where(user_id: current_user.id).order(physicalfinding_measuring_date: :asc).pluck(:abdominal_circumference)

      @chart = LazyHighCharts::HighChart.new("graph") do |c|
        # c.title(text: "体重・腹囲 推移")
        c.xAxis(categories: physicalfinding_measuring_date)
        c.yAxis(title: {text: 'kg / cm'})
        c.series(name: "腹囲 cm", data: abdominal_circumference)
        c.series(name: "体重 kg", data: weight)
        c.series(name: "BMI", data: bmi)
      end
    end
  end

  def overview_physicalfinding_measuring
    @overview_physicalfinding_measurings = PhysicalfindingMeasuring.includes(:user).where.not(physicalfinding_measuring_date:nil).order(physicalfinding_measuring_date: :desc).where(params[:id])
  end

  def overview_blood_urine_test
    @overview_blood_urine_tests = BloodUrineTest.includes(:user).where.not(blood_urine_test_date:nil).order(blood_urine_test_date: :desc).where(params[:id])
  end

  def overview_medical_care
    @overview_medical_cares = MedicalCare.includes(:user).where.not(medical_care_date:nil).order(medical_care_date: :desc).where(params[:id])
  end

  def overview_vaccines
    @overview_vaccines = Vaccine.includes(:user).where.not(vaccine_date:nil).order(vaccine_date: :desc).where(params[:id])
  end

end
