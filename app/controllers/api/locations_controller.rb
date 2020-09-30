# frozen_string_literal: true

# Returns a list of all Locations, ordered alphabetically
class Api::LocationsController < ApplicationController
  def show
    @locations = Location.all.order(name: :asc)

    render json: @locations
  end
end
