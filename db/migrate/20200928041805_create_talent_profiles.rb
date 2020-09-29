# frozen_string_literal: true

# A User-created profile detailing what they do/type of Events they can be booked for
class CreateTalentProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :talent_profiles do |t|
      t.integer :user_id, null: false
      t.integer :genre_id, null: false
      t.integer :location_id, null: false
      t.string :image_url, null: false
      t.text :description, null: false
      t.string :personal_link, null: false
      t.boolean :open_for_booking, null: false
      t.boolean :open_for_commission, null: false

      t.timestamps null: false
    end

    add_index :talent_profiles, :user_id, using: :btree
    add_index :talent_profiles, :genre_id, using: :btree
    add_index :talent_profiles, :location_id, using: :btree
  end
end
