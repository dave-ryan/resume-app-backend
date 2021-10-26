class Education < ApplicationRecord
  belongs_to :student

  validates :start_date, presence: true
  validates :degree, presence: true
  validates :university_name, presence: true


end
