class ArtistsController < ApiController
  # GET /artists
  def index
    artists = Artist.all
    render json: @artists
  end

  # GET /artists/1
  def show
    artist = Artist.find(params[:id])
    render json: artist
  end
end
