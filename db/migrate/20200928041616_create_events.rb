class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :user_id, null: false
      t.integer :genre_id, null: false
      t.integer :image_id, null: false
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
    add_index :events, :image_id, using: :btree
  end
end
