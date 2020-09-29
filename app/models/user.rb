# frozen_string_literal: true

# Users can create Events, Talent Profiles, and Registrations as well as Send and Receive Messages
class User < ApplicationRecord
  has_many :events
  has_many :talent_profiles
  has_many :registrations
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
  has_many :received_messages, class_name: 'Message', foreign_key: 'recipient_id'

  belongs_to :location
end
