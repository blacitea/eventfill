# frozen_string_literal: true

module API
  # Returns a list of all Locations, ordered alphabetically
  class LocationsController < ApplicationController
    def show
      @locations = Location.all.order(name: :asc)

      render json: @locations
    end
  end
end
