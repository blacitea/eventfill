# frozen_string_literal: true

module API
  module TalentProfiles
    # Returns a list of all TalentProfiles in one Location, ordered alphabetically
    class LocationController < ApplicationController
      def show
        @location = Location.find params[:id]
        @talent_profiles = TalentProfile.where(location: @location).order(name: :asc)

        render json: @talent_profiles
      end
    end
  end
end
