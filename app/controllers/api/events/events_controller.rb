# frozen_string_literal: true

# displays a list of all events, ordered by the nearest start date/time
class Api::Events::EventsController < ApplicationController
  def show
    @events = Event.all.order(start: :asc)
    render json: @events
  end
end
