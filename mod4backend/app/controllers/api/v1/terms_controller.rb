require 'rspotify'

module Api
  module V1
      class TermsController < ApplicationController

        def index
          @terms = Term.all

          render json: @terms
        end

        def create

          @term = Term.new(term_params)

          @user = User.find_or_create_by(username: params[:user])

          if @term.save
            @playlist = Playlist.create_playlist(@term.word, @user.id)

            render json: @playlist, status: :created
          else
            render json: @term.errors, status: :unproccesable_entity
          end

        end

        private

        def term_params
          params.require(:term).permit(:word)
        end

      end
  end
end
