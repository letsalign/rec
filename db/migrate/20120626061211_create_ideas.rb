class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :description
      t.references :user
      t.references :group

      t.timestamps
    end
    add_index :ideas, :user_id
    add_index :ideas, :group_id
  end
end
