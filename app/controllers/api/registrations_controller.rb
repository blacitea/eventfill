# frozen_string_literal: true

module API
  # Registrations track which Users are attending each Event
  class RegistrationsController < ApplicationController
    include ActionController::Cookies

    def create
      if Registration.where(event_id: params[:event_id]).where(user_id: params[:user_id]).present?
        render json: { error: 'Already exists!' }
      else
        @registration = Registration.create!(user_id: params[:user_id], event_id: params[:event_id])

        render json: @registration if @registration.save!
      end
    end

    def destroy
      @registration = Registration.find params[:id]
      if @registration.user_id.to_s == cookies[:user_id]
        @registration.destroy!

        render json:
        { success: "Registration for #{@registration.user.name} to attend #{@registration.event.name} deleted" }
      else
        render status: :unauthorized
      end
    end
  end
end
