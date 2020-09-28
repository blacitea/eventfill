class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.integer :user_id, null: false
      t.integer :event_id, null: false

      t.timestamps null: false
    end

    add_index :registrations, :user_id, using: :btree
    add_index :registrations, :event_id, using: :btree
  end
end
