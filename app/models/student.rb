class Student < ApplicationRecord
  has_many :experiences
  has_many :educations
  has_many :skills
  has_many :projects
  has_secure_password
end
