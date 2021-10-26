class ExperiencesController < ApplicationController
  def index
    experiences = Experience.All
    render json: experiences
  end

  
end
