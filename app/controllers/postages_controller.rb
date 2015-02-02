class PostagesController < ApplicationController
  def index
    @prefectures = Prefecture.all
  end

  def postage
    name = postage_params[:name]
    @postage = Prefecture.find_by_name(name)
    respond_to do |format|
      format.json { render json: @postage }
    end
  end

  private

  def postage_params
    params.permit(:name)
  end
end
