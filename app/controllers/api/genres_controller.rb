# frozen_string_literal: true

module API
  # Returns a list of all Genres, ordered alphabetically
  class GenresController < ApplicationController
    def show
      @genres = Genre.all.order(name: :asc)

      render json: @genres
    end
  end
end
