class TracksController < ApiController
  # GET /tracks
  def index
    tracks = Track.all

    render json: tracks
  end

  # GET /tracks/1
  def show
    track = Track.find(params[:id])
    render json: track
  end
end
