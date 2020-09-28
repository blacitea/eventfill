# frozen_string_literal: true

# Stores information about a User
class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :name, null: false
      t.string :location, null: false

      t.timestamps null: false
    end
  end
end
