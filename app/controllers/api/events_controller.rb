# frozen_string_literal: true

module API
  # Displays a list of all Events, ordered by the nearest start date/time
  class EventsController < ApplicationController
    include ActionController::Cookies

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

    # def new
    #   @event = Event.new

    #   render json: { success: @event }
    # end

    def create
      @event = Event.new(event_params)
      render json: { success: @event } if @event.save!
    end

    # def edit
    #   @event = Event.find params[:id]
    # end

    def update
      @event = Event.find params[:id]
      if @event.user_id.to_s == cookies[:user_id]
        status = 'updated'
        @event.update!(event_params)
        if event_params[:cancelled]
          status = 'cancelled'
          cancel_event(@event)
        end
        render json: { success: "#{@event.name} #{status}" }
      else
        render status: :unauthorized,
               json: { error: 'Could not update event. Are you sure it belongs to you?' }
      end
    end

    # def destroy
    #   @event = Event.find params[:id]
    #   if @event.user_id.to_s == cookies[:user_id] && cancel_event(@event)
    #     @event.destroy!
    #     render json: { success: "#{@event.name} cancelled" }
    #   else
    #     render status: :unauthorized,
    #            json: { error: 'Could not delete event. Are you sure it belongs to you?' }
    #   end
    # end

    private

    def event_params
      params.require(:event)
            .permit(:user_id, :genre_id, :location_id, :image_url, :name, :start, :end, :max_attendees, :description, :accepting_talent, :cancelled)
    end

    def cancel_event(event)
      message_attendees(event)
      message_talents(event)
    end

    def message_attendees(event)
      @event = event

      @event.attendees.each do |attendee|
        @registration = Registration.find_by(user: attendee, event: @event)
        @auto_message = Message.create!(
          sender: User.find(0), recipient: attendee,
          content: "#{attendee.name}: Event '#{@event.name}' has been cancelled! :("
        )
      end
    end

    def message_talents(event)
      @event = event

      @event.talents.each do |talent|
        @gig = Gig.find_by(talent_profile: talent, event: @event)
        @auto_message = Message.create!(
          sender: User.find(0), recipient: talent.user,
          content: "#{talent.name}: Event '#{@event.name}' + associated gigs have been cancelled! :("
        )
        @gig.update!(rejected: true, accepted: nil)
      end
    end
  end
end
