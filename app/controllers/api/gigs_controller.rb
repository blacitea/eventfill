# frozen_string_literal: true

module API
  # Registrations track Talent Profiles invited to Events, including invite acceptance status
  class GigsController < ApplicationController
    include ActionController::Cookies

    def create
      if Gig.where(event_id: gig_params[:event_id], talent_profile_id: gig_params[:talent_profile_id]).present?
        render status: :see_other,
               json: { error: 'Already exists!' },
               redirect_to: %i[events show]
      else
        @gig = Gig.new(gig_params)
        if authorised_poster?(@gig)
          render json: { gig: @gig, invitee: @gig.talent_profile.name } if @gig.save!
        else
          render status: :unauthorized,
                 json: { error: 'User validation error' }
        end
      end
    end

    def update
      @gig = Gig.find params[:id]
      if authorised_poster?(@gig)
        render json: @gig if @gig.update!(gig_params)
      else
        render status: :unauthorized,
               json: { error: 'Could not update gig. Are you sure it belongs to you?' }
      end
    end

    private

    def gig_params
      params.require(:gig)
            .permit(:talent_profile_id, :event_id, :time, :description, :accepted, :rejected)
    end

    def authorised_poster?(gig)
      gig.talent_profile.user.id.to_s == cookies[:user_id] ||
        gig.event.user.id.to_s == cookies[:user_id]
    end
  end
end
