class PlaylistsController < ApiController
  # GET /playlists
  def index
    playlists = Playlist.all

    render json: playlists
  end

  # GET /playlists/1
  def show
    playlist = Playlist.find(params[:id])
    render json: playlist
  end
end
