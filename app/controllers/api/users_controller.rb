# frozen_string_literal: true

module API
  # Returns information about a given User
  class UsersController < ApplicationController
    def show
      @user = User.find params[:id]
      @user_events = @user.registrations.map { |reg| Event.find_by(id: reg.event_id) }

      render json: { user: @user, attending: @user_events }
    end
  end
end
