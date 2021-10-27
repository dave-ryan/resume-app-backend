class SkillSerializer < ActiveModel::Serializer
  attributes :id, :skill_name, :student_id

  belongs_to :student
end
