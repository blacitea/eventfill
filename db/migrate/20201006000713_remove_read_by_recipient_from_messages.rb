# frozen_string_literal: true

# Not using
class RemoveReadByRecipientFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :read_by_recipient, :boolean
  end
end
