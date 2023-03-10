class Vacation < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :department, presence: true
  validates :employee_name, presence: true

  validate :end_date_after_start_date

  def self.by_department(department)
    where(department: department)
  end

  def self.by_employee_name(employee_name)
    where(employee_name: employee_name)
  end

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
