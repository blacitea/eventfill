# frozen_string_literal: true

# Registrations track which Users are attending which Events for the purpose of maximum attendees
class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
