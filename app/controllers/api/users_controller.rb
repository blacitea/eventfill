# frozen_string_literal: true

module API
  # Returns information about a given User
  class UsersController < ApplicationController
    def show
      @user = User.find params[:id]
      @events = @user.events
      @registrations = @user.registrations
      @gigs = @user.gigs.group_by { |gig| gig.talent_profile.name }

      render json: { user: @user, owned_events: @events, attending: @registrations, gigs: @gigs }
    end
  end
end
