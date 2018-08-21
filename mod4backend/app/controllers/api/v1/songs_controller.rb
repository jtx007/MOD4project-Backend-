module Api
  module V1
class SongsController < ApplicationController

    def index
       render json: Song.all
    end


    end
  end
end
