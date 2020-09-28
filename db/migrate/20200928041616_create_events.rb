class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :owner_id, null: false
      t.integer :genre_id, null: false
      t.integer :image_id, null: false
      t.text :description, null: false
      t.boolean :accepting_talent, null: false

      t.timestamps null: false
    end

    add_index :events, :owner_id, using: :btree
    add_index :events, :genre_id, using: :btree
    add_index :events, :image_id, using: :btree
  end
end
