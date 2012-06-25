class CreateTopicsUsers < ActiveRecord::Migration
  def change
    create_table :topics_users do |t|
      t.references :topic
      t.references :user

      t.timestamps
    end
    add_index :topics_users, :topic_id
    add_index :topics_users, :user_id
  end
end
