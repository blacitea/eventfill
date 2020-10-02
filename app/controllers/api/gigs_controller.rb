# frozen_string_literal: true

module API
  # Registrations track Talent Profiles invited to Events, including invite acceptance status
  class GigsController < ApplicationController
    def create
      if Gig.where(event_id: gig_params[:event_id])
            .where(talent_profile_id: gig_params[:talent_profile_id]).present?
        render json: { error: 'Already exists!' }
      else
        @gig = Gig.new(gig_params)

        if @gig.save
          render json: @gig
        else
          render json: { error: @gig.errors }
        end
      end
    end

    def update
      @gig = Gig.find params[:id]

      if @gig.update(gig_params)
        render json: @gig
      else
        render json: { error: @gig.errors }
      end
    end

    private

    def gig_params
      params.require(:gig)
            .permit(:talent_profile_id, :event_id, :time, :description, :accepted, :rejected)
    end
  end
end
