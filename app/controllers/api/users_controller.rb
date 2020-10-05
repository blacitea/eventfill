# frozen_string_literal: true

module API
  # Returns information about a given User
  class UsersController < ApplicationController
    include ActionController::Cookies

    def show
      if params[:id].to_s == cookies[:user_id]
        @user = User.find params[:id]

        render json: display_user_info(@user)
      else
        render status: :unauthorized,
               json: { error: 'User validation error' }
      end
    end

    private

    def display_user_info(user)
      @events = user.events.select(:id, :name, :description, :start, :end)
                    .where('events.cancelled is null')
      @registrations = user.registrations.joins(:event)
                           .select(:id, :event_id, :name, :description, :start, :end)
                           .where('events.cancelled is null')
      @gigs = user.gigs.joins(:event, :talent_profile)
                  .select('gigs.id, event_id, talent_profile_id,
                    events.name as event_name, events.description,
                    events.start, events.end, gigs.accepted, gigs.rejected')
                  .where('events.cancelled is null')
                  .order('events.start ASC')
                  .group_by { |gig| gig.talent_profile.name }

      { user: user, owned_events: @events, attending: @registrations, gigs: @gigs }
    end
  end
end
