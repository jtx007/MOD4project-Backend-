module Api
  module V1
    class PlaylistsController < ApplicationController

      def index
        render json: Playlist.includes(:songs), include: ['songs']
      end

      def create

      end
    end
  end
end
