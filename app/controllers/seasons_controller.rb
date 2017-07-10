class SeasonsController < ApiController
  # GET /seasons
  def index
    seasons = Season.all

    render json: seasons
  end

  # GET /seasons/1
  def show
    season = Season.find(params[:id])
    render json: season
  end
end
