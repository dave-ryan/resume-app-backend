class SkillsController < ApplicationController
  def index
    skills = Skill.all
    render json: skills
  end

  def show
    skill = Skill.find_by(id: params[:id])
    render json: skill
  end

  def create
    skill = Skill.create!(
      skill_name: params[:skill_name],
      student_id: current_user.id,
    )
    if skill.save
      render json: post
    else
      render json: { error: skill.errors.full_messages }, status: :bad_request
    end
  end

  def update
    skill = Skill.find_by(id: params[:id])
    skill.skill_name = params[:skill_name] || skill.skill_name

    if skill.save
      render json: skill
    else
      render json: { errors: skill.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    skill = Skill.find_by(id: params[:id])
    skill.destroy
    render json: { message: "skill succesfully destroyed!" }
  end
end
