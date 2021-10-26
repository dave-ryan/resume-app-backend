class EducationsController < ApplicationController
  def index
    educations = Education.All
    render json: educations
  end
end
