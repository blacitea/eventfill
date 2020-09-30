# frozen_string_literal: true

# Returns a list of all Events of one Genre, ordered by the nearest start date/time
class Api::Events::GenreController < ApplicationController
  def show
    @genre = Genre.find params[:id]
    @events = Event.where(genre: @genre).order(start: :asc)

    render json: @events
  end
end
