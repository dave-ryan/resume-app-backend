class Project < ApplicationRecord
  belongs_to :student

  validates :name, presence: true
  validates :description, presence: true
  validates :url, presence: true
end
