# frozen_string_literal: true

# Locations have both Events and Talent Profiles associated with them
class Location < ApplicationRecord
  has_many :users
  has_many :events
  has_many :talent_profiles
end
