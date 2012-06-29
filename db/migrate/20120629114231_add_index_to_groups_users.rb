class AddIndexToGroupsUsers < ActiveRecord::Migration
  def change
    add_index :groups_users, [:group_id, :user_id], :name => "grpusr", :unique => true
  end
end
