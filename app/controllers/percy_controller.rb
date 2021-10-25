class PercyController < ApplicationController
  def index
    render json: { message: "Test for pulling code." }
  end
end
