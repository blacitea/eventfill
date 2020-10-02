# frozen_string_literal: true

module API
  # Displays a list of all talent_profiles, ordered by most gigs
  class TalentProfilesController < ApplicationController
    def index
      @talent_profiles = TalentProfile.all.sort_by { |profile| profile.gigs.count }.reverse

      render json: @talent_profiles
    end

    def show
      @talent_profile = TalentProfile.find params[:id]
      @events = @talent_profile.gigs.where(accepted: true).map(&:event)
      @gig_count = @talent_profile.gigs.count

      render json: { talent: @talent_profile, events: @events, gig_count: @gig_count }
    end

    def new
      @talent_profile = TalentProfile.new

      render json: { success: @talent_profile }
    end

    def create
      @talent_profile = TalentProfile.new(talent_profile_params)
      render json: { success: @talent_profile } if @talent_profile.save
    end

    def edit
      @talent_profile = TalentProfile.find params[:id]
    end

    def update
      @talent_profile = TalentProfile.find params[:id]
      if @talent_profile.update(talent_profile_params)
        render json: { success: @talent_profile }
      else
        render json: { error: @talent_profile.errors }
      end
    end

    private

    def talent_profile_params
      params.require(:talent_profile)
            .permit(:user_id, :genre_id, :location_id, :image_url, :description, :personal_link,
                    :open_for_booking, :name)
    end
  end
end
