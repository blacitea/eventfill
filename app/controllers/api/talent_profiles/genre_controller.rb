# frozen_string_literal: true

module API
  module TalentProfiles
    # Returns a list of all TalentProfiles of one Genre, ordered alphabetically
    class GenreController < ApplicationController
      def show
        @genre = Genre.find params[:id]
        @talent_profiles = TalentProfile.where(genre: @genre).order(name: :asc)

        render json: @talent_profiles
      end
    end
  end
end
