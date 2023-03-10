class Api::V1::VacationsController < ApplicationController
  before_action :authorize_request, only: %i[index show create update destroy]

  def index
    @vacations = Vacation.where(filter_params).page(params[:page]).per(params[:per_page || 20])
    render json: @vacations
  end

  def show
    @vacation = Vacation.find(params[:id])
    render json: @vacation
  end

  def create
    @vacation = Vacation.new(vacation_params)

    if @vacation.save
      render json: @vacation, status: :created
    else
      render json: @vacation.errors, status: :unprocessable_entity
    end
  end

  def update
    @vacation = Vacation.find(params[:id])

    if @vacation.update(vacation_params)
      render json: @vacation
    else
      render json: @vacation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @vacation = Vacation.find(params[:id])
    @vacation.destroy
  end

  private

  def vacation_params
    params.require(:vacation).permit(:start_date, :end_date, :department, :employee_name)
  end

  def filter_params
    params.permit(:department, :employee_name)
  end
end
