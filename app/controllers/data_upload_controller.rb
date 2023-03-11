class DataUploadController < ApplicationController
  def upload
    file = params[:file]

    if file.present?
      data = CSV.parse(file.read, headers: true)

      data.each do |row|
        Vacation.create!(
          start_date: row['Start Date'],
          end_date: row['End Date'],
          department: row['Department'],
          employee_name: row['Employee Name']
        )
      end

      render json: { message: 'Data uploaded successfully' }
    else
      render json: { error: 'No file found' }, status: :unprocessable_entity
    end
  end
end
