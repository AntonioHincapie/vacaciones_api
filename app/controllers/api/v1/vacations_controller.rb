class Api::V1::VacationsController < ApplicationController
  before_action :authorize_request, only: %i[index show create destroy]

  def index
    @vacations = Vacation.where(filter_params).page(params[:page]).per(params[:per_page || 20])
    render json: @vacations
  end

  def show
    @vacation = set_vacation
    render json: @vacation
  end

  def create
    if json_params.empty?
      render json: { error: 'No valid data found' }, status: :unprocessable_entity
    end

    vacation = Vacation.new(json_params)
    if vacation.save
      render json: vacation, status: :created
    else
      render json: vacation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @vacation = set_vacation
    @vacation.destroy
    render json: { message: 'Vacation deleted' }
  end

  private

  def set_vacation
    @vacation = Vacation.find(params[:id])
  end

  def json_params
    allowed_data = %(start_date end_date department employee_name).freeze
    json_payload.select { |allow| allowed_data.include?(allow) }
  end

  def filter_params
    params.permit(:department, :employee_name)
  end
end
