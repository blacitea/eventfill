class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :sender_id, null: false
      t.integer :recipient_id, null: false
      t.text :content, null: false
      t.datetime :sent_at, null: false
      t.boolean :read_by_recipient, null: false, default: false

      t.timestamps null: false
    end

    add_index :messages, :sender_id, using: :btree
    add_index :messages, :recipient_id, using: :btree
  end
end
