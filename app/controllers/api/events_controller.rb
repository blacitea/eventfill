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
      @talents = @event.gigs.where(accepted: true).map(&:talent_profile)
      @attendee_count = @event.registrations.count

      render json: { event: @event, talents: @talents, attendees: @attendee_count }
    end

    def new
      @event = Event.new

      render json: { success: @event }
    end

    def create
      @event = Event.new(event_params)
      render json: { success: @event } if @event.save!
    end

    def edit
      @event = Event.find params[:id]
    end

    def update
      @event = Event.find params[:id]
      
      render json: { success: @event } if @event.update!(event_params)
    end

    def destroy
      @event = Event.find params[:id]
      if @event.user_id == params[:user_id].to_i && @event.destroy
        cancel_event(@event)
        render json:
        { success: "#{@event.name} cancelled" }
      else
        render json: { error: 'Could not delete' }
      end
    end

    private

    def event_params
      params.require(:event)
            .permit(:user_id, :genre_id, :location_id, :image_url, :name, :start, :end, :max_attendees,
                    :description, :accepting_talent)
    end

    def cancel_event(event)
      event.attendees.each do |attendee|
        @auto_message = Message.create!(sender: User.find(0), recipient: attendee, content: "Event '#{event.name}' has been cancelled! :(")
        Registration.destroy.where(user: attendee, event: event)
      end
    end
  end
end
