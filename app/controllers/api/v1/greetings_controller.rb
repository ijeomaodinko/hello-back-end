module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        @greetings = Greeting.order(Arel.sql('RANDOM()')).first

        render json: @greetings
      end
    end
  end
end