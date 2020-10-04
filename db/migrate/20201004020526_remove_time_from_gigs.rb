# frozen_string_literal: true

# Unused field
class RemoveTimeFromGigs < ActiveRecord::Migration[5.2]
  def change
    remove_column :gigs, :time, :datetime
  end
end
