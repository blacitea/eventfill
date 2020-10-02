# frozen_string_literal: true

module API
  # Returns information about a given User
  class UsersController < ApplicationController
    def show
      @user = User.find params[:id]
      @events = @user.events
      @registrations = @user.registrations
      @gig_info = @user.gigs.map do |gig|
        gig.attributes.merge(talent_name: gig.talent_profile.name)
      end
      render json: { user: @user, owned_events: @events, attending: @registrations, gigs: @gigs }
    end
  end
end
