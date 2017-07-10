class ReleasesController < ApiController
  # GET /releases
  def index
    releases = Release.all
    render json: releases
  end

  # GET /releases/1
  def show
    release = Release.find(params[:id])
    render json: release
  end
end
