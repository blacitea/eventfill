# frozen_string_literal: true

# Decided to use created_at over this
class RemoveSentAtFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :sent_at, :datetime
  end
end
