# frozen_string_literal: true

# Genres have both Events and Talent Profiles associated with them
class Genre < ApplicationRecord
  has_many :events
  has_many :talent_profiles
end
