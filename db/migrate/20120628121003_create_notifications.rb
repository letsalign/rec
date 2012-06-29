class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.references :user
      t.integer :to_id
      t.integer :target_id
      t.string :target_type
      t.integer :notification_type
      t.timestamp :read_at

      t.timestamps
    end
    add_index :notifications, :user_id
  end
end
