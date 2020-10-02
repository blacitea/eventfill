# frozen_string_literal: true

# Events are created by users, belong to one genre, and can have many gigs associated
class Event < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  belongs_to :location

  has_many :gigs
  has_many :registrations
  has_many :talent_profiles, through: :gigs
  has_many :attendees, through: :registrations
end
