class CreateGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :gigs do |t|
      t.integer :talent_id, null: false
      t.integer :event_id, null: false
      t.string :date, null: false
      t.text :description, null: false
      t.boolean :accepted
      t.boolean :rejected

      t.timestamps null: false
    end

    add_index :gigs, :talent_id, using: :btree
    add_index :gigs, :event_id, using: :btree
  end
end
