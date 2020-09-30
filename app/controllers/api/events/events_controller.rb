# frozen_string_literal: true

# Displays a list of all Events, ordered by the nearest start date/time
class Api::Events::EventsController < ApplicationController
  def show
    @events = Event.all.order(start: :asc)

    render json: @events
  end
end
