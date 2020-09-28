# frozen_string_literal: true

# An Event that users can create, perform at, or attend
class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :user_id, null: false
      t.integer :genre_id, null: false
      t.string :image_url, null: false
      t.string :name, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.integer :max_attendees, null: false
      t.string :location, null: false
      t.text :description, null: false
      t.boolean :accepting_talent, null: false

      t.timestamps null: false
    end

    add_index :events, :user_id, using: :btree
    add_index :events, :genre_id, using: :btree
  end
end
