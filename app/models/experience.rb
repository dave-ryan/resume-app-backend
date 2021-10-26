class Experience < ApplicationRecord
  belongs_to :student

  validates :start_date, presence: true
  validates :job_title, presence: true
  validates :company_name, presence: true
end
