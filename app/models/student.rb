class Student < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_secure_password

  has_many :experiences
  has_many :educations
  has_many :skills
  has_many :projects
end
