class AddDetailsToGroupsUsers < ActiveRecord::Migration
  def change
    add_column :groups_users, :is_approved, :boolean
    add_column :groups_users, :is_admin, :boolean
    add_column :groups_users, :approved_by_id, :integer
    add_column :groups_users, :added_by_id,:integer
  end
end
