class ProjectsSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :url, :screenshot, :student_id

  belongs_to :student
end
