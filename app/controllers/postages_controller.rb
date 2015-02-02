class PostagesController < ApplicationController
  def index
    @prefectures = Prefecture.all
  end
end
