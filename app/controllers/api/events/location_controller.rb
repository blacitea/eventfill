# frozen_string_literal: true

# Returns a list of all Events at one Location, ordered by the nearest start date/time
class Api::Events::LocationController < ApplicationController
  def show
    @location = Location.find params[:id]
    @events = Event.where(location: @location).order(start: :asc)

    render json: @events
  end
end
