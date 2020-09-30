# frozen_string_literal: true

# Returns a list of all Genres, ordered alphabetically
class Api::GenresController < ApplicationController
  def show
    @genres = Genre.all.order(name: :asc)

    render json: @genres
  end
end
