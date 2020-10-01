# frozen_string_literal: true

module API
  # Displays a list of all Events, ordered by the nearest start date/time
  class EventsController < ApplicationController
    def index
      @events = {}
      @events[:all] = Event.all.order(start: :asc)
      @events[:upcoming] = Event.where('start > ?', DateTime.now).order(start: :asc)

      render json: @events
    end

    def show
      @event = Event.find params[:id]
      @gigs = @event.gigs.where(accepted: true)
      @full = @event.registrations.count >= @event.max_attendees

      render json: { event: @event, gigs: @gigs, full: @full }
    end

    def new
      @event = Event.new

      render json: { success: @event }
    end

    def create
      @event = Event.new(event_params)
      render json: { success: @event } if @event.save
    end

    def edit
      @event = Event.find params[:id]
    end

    def update
      @event = Event.find params[:id]
      if @event.update(event_params)
        render json: { success: @event }
      else
        render json: { error: @event.errors }
      end
    end

    private

    def event_params
      params.require(:event)
            .permit(:user_id, :genre_id, :location_id, :image_url, :name, :start, :end, :max_attendees,
                    :description, :accepting_talent)
    end
  end
end
