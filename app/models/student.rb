class Student < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_secure_password

  has_many :experiences
  has_many :educations
  has_many :skills
  has_many :projects

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true
  validates :short_bio, presence: true

end
