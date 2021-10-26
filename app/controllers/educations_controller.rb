class EducationsController < ApplicationController
  before before_action :authenticate_current_user

  def index
    educations = Education.all
    render json: educations
  end

  def show
    education = Education.find_by(id: params["id"])
    render json: education
  end

  def create
    education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details],
      student_id: current_user.student_id,
    )
    if education.save
      render json: education
    else
      render json: { errors: education.error.full_messages }
    end
  end

  def update
    education = Education.find_by(id: params["id"])
    education.start_date = params[:start_date] || education.start_date
    education.end_date = params[:end_date] || education.end_date
    education.degree = params[:degree] || education.job_title
    education.university_name = params[:university_name] || education.company_name
    education.details = params[:details] || education.details
    # education.student_id = params[:student_id] || education.student_id
    if education.save
      render json: education
    else
      render json: { errors: education.error.full_messages }
    end
  end

  def destroy
    education = Education.find_by(id: params["id"])
    education.destroy
    render json: "The education has been removed."
  end
end
