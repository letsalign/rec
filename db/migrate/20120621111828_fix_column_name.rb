class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :ideas, :user_id, :topic_id
  end
end
