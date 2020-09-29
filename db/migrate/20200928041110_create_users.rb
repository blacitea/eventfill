# frozen_string_literal: true

# Stores information about a User
class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :name, null: false
      t.integer :location_id, null: false

      t.timestamps null: false
    end

    add_index :users, :location_id, using: :btree
  end
end
