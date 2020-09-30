# frozen_string_literal: true

module API
  module Events
    # Displays a list of all Events, ordered by the nearest start date/time
    class EventsController < ApplicationController
      def show
        @events = Event.where('start > ?', Time.now).order(start: :asc)

        render json: @events
      end
    end
  end
end
