class ProjectsController < ApplicationController
  def index
    projects = Project.all
    render json: projects
  end

  def show
    project = Project.find_by(id: params[:id])
    render json: project
  end

  def create
    project = Project.create!(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
      student_id: current_user.id,
    )
    if project.save
      render json: project
    else
      render json: { errors: project.errors.full_messages }, status: :bad_request
    end
  end

  def update
    project = Project.find_by(id: params[:id])

    project.name = params[:name] || project.name
    project.description = params[:description] || project.description
    project.url = params[:url] || project.url
    project.screenshot = params[:screenshot] || project.screenshot
    if project.save
      render json: project
    else
      render json: { errors: project.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    project = Project.find_by(id: params[:id])
    project.destroy
    render json: { message: "project succesfully destroyed!" }
  end
end
