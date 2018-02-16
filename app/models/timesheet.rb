require 'csv'
class Timesheet < ApplicationRecord
    has_many :assignments
    has_many :associates
    def self.to_csv(options = {})
      desired_columns = ["emp_id", "name","timesheet_id", "assignment_id", "chargecode","date", "hours"]
      CSV.generate(options) do |csv|
        csv << desired_columns
        @associates.each do |product|
          csv << product.attributes.values_at(*desired_columns)
        end
      end
    end
end
