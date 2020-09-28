# frozen_string_literal: true

# Messages are between 2 Users with one as the Sender and one as the Recipient
class Message < ApplicationRecord
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :recipient, class_name: 'User', foreign_key: 'recipient_id'
end
