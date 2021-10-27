class StudentsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end

  def create
    student = Student.create!(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      personal_blog: params[:personal_blog],
      online_resume_url: params[:online_resume_url],
      github_url: params[:github_url],
      photo: params[:photo],
      phone_number: params[:phone_number],
    )
    if student.save
      render json: student
    else
      render json: { error: student.errors.full_messages }, status: :bad_request
    end
  end

  def update
    student = Student.find_by(id: params[:id])
    student.first_name = params[:first_name] || student.first_name
    student.last_name = params[:last_name] || student.last_name
    student.email = params[:email] || student.email
    student.password = params[:password] || student.password_digest
    student.short_bio = params[:short_bio] || student.short_bio
    student.linkedin_url = params[:linkedin_url] || student.linkedin_url
    student.twitter_handle = params[:twitter_handle] || student.twitter_handle
    student.personal_blog = params[:personal_blog] || student.personal_blog
    student.online_resume_url = params[:online_resume_url] || student.online_resume_url
    student.github_url = params[:github_url] || student.github_url
    student.photo = params[:photo] || student.photo
    student.phone_number = params[:phone_number] || student.phone_number
    if student.save
      render json: student
    else
      render json: { error: student.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    student = Student.find_by(id: params[:id])
    student.destroy
    render json: { message: "student account succesfully destroyed!" }
  end
end
