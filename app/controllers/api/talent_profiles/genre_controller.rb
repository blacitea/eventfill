# frozen_string_literal: true

module API
  module TalentProfiles
    # Returns a list of all TalentProfiles of one Genre, ordered by most gigs
    class GenreController < ApplicationController
      def show
        @genre = Genre.find params[:id]
        @talent_profiles = TalentProfile.where(genre: @genre).sort_by { |profile| profile.gigs.count }.reverse

        render json: @talent_profiles
      end
    end
  end
end
