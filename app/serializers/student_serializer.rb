class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :short_bio, :linkedin_url, :twitter_handle, :personal_blog, :phone_number, :online_resume_url, :github_url, :photo

  has_many :educations
  has_many :projects
  has_many :experiences
  has_many :skills
end
