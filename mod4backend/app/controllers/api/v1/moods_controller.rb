
module Api
  module v1
    class MoodsController < ApplicationController


      def create
  

      end


      private

      def mood_params
        params.require(:mood).permit(:face, :user_id)

      end

    end

  end
end
