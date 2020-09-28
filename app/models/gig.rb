# frozen_string_literal: true

# Gigs are a link between Events and Talent Profiles appearing at them
class Gig < ApplicationRecord
  belongs_to :event
  belongs_to :talent_profile
end
