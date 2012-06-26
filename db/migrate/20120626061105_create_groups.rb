class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :title
      t.text :description
      t.references :user

      t.timestamps
    end
    add_index :groups, :user_id
  end
end
