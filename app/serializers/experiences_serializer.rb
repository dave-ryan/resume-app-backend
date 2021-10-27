class ExperiencesSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :job_title, :company_name, :details, :student_id

  belongs_to :student
end
