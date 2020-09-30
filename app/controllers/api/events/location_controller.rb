# frozen_string_literal: true

module API
  module Events
    # Returns a list of all Events at one Location, ordered by the nearest start date/time
    class LocationController < ApplicationController
      def show
        @location = Location.find params[:id]
        @events = Event.where(location: @location).order(start: :asc)

        render json: @events
      end
    end
  end
end
