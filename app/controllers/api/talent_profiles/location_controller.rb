# frozen_string_literal: true

module API
  module TalentProfiles
    # Returns a list of all TalentProfiles in one Location, ordered by most gigs
    class LocationController < ApplicationController
      def show
        @location = Location.find params[:id]
        @talent_profiles = TalentProfile.where(location: @location).sort_by { |profile| profile.gigs.count }.reverse

        render json: @talent_profiles
      end
    end
  end
end
