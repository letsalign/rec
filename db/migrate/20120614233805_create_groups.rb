class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.references :company
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :groups, :company_id
  end
end
