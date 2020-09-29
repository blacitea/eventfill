# frozen_string_literal: true

# Users can have many Talent Profiles, each of which has one Genre associated with it and can be booked for many Gigs
class TalentProfile < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  belongs_to :location

  has_many :gigs
end
