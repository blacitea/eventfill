# frozen_string_literal: true

# Events are created by users, belong to one genre, and can have many gigs associated
class Event < ApplicationRecord
  belongs_to :user
  belongs_to :genre

  has_many :gigs
end
