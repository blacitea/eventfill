# frozen_string_literal: true

module API
  # Registrations track which Users are attending each Event
  class RegistrationsController < ApplicationController
    def index
      @data = {}
      if params[:user_id]
        @user_registrations = Registration.where(user_id: params[:user_id])
        @data[:user_registrations] = @user_registrations
      end

      if params[:event_id]
        @event_registration_count = Registration.where(event_id: params[:event_id]).count
        @data[:event_registration_count] = @event_registration_count
      end

      render json: @data
    end

    def create
      if Registration.where(event_id: params[:event_id]).where(user_id: params[:user_id]).present?
        render json: { error: 'Already exists!' }
      else
        @registration = Registration.create!(user_id: params[:user_id], event_id: params[:event_id])

        render json: @registration if @registration.save
      end
    end

    def destroy
      @registration = Registration.find params[:id]
      if @registration.user_id == params[:user_id].to_i && @registration.destroy
        render json:
        { success: "Registration for #{@registration.user.name} to attend #{@registration.event.name} deleted" }
      else
        render json: { error: 'Could not delete' }
      end
    end
  end
end
