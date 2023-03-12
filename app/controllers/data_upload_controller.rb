require 'csv'

class DataUploadController < ApplicationController
  def upload
    file = params[:file]

    if file.present?
      data = File.read(file)
      dataCSV = CSV.parse(data, headers: true, encoding: 'ISO-8859-1')

      dataCSV.each do |row|
        Vacation.create!(
          start_date: row['Start Date'],
          end_date: row['End Date'],
          department: row['Department'],
          employee_name: row['Employee Name']
        )
      end

      render json: { message: "File uploaded successfull y#{dataCSV.Name}" }, status: :ok
    else
      render json: { error: 'No file found' }, status: :unprocessable_entity
    end
  end
end
