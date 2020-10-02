# frozen_string_literal: true

module API
  # Registrations track Talent Profiles invited to Events, including invite acceptance status
  class GigsController < ApplicationController
    def create
      if Gig.where(event_id: gig_params[:event_id], talent_profile_id: gig_params[:talent_profile_id]).present?
        render json: { error: 'Already exists!' }
      else
        @gig = Gig.new(gig_params)

        render json: @gig if @gig.save!
      end
    end

    def update
      @gig = Gig.find params[:id]

      render json: @gig if @gig.update!(gig_params)
    end

    private

    def gig_params
      params.require(:gig)
            .permit(:talent_profile_id, :event_id, :time, :description, :accepted, :rejected)
    end
  end
end
