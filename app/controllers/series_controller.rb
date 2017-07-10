class SeriesController < ApiController
  # GET /series
  def index
    series = Series.all
    render json: series
  end

  # GET /series/1
  def show
    series = Series.find(params[:id])
    render json: series
  end
end
