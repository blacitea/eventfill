# frozen_string_literal: true

# Events are created by users, belong to one genre, and can have many gigs associated
class Event < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  belongs_to :location

  has_many :gigs
  has_many :registrations
  has_many :talents, through: :gigs, source: :talent_profile
  has_many :attendees, through: :registrations, source: :user
end
