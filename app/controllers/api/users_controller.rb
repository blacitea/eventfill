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
        render status: :unauthorized
      end
    end

    private

    def display_user_info(user)
      @events = user.events
      @registrations = user.registrations
      @gigs = user.gigs.group_by { |gig| gig.talent_profile.name }

      { user: user, owned_events: @events, attending: @registrations, gigs: @gigs }
    end
  end
end
