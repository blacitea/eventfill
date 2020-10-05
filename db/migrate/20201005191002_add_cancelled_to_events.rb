# frozen_string_literal: true

# Change Event logic to mark cancelled over deleting
class AddCancelledToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :cancelled, :boolean
  end
end
