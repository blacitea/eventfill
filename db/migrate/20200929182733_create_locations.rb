# frozen_string_literal: true

# Events and Talent Profiles have Locations
class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
