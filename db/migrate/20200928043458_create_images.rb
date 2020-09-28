class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :user_id, null: false
      t.string :image_url, null: false

      t.timestamps null:false
    end

    add_index :images, :user_id, using: :btree
  end
end
