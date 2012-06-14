class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :location, :string
    add_column :users, :twitter_uid, :string
    add_column :users, :twitter_token, :string
    add_column :users, :twitter_token_secret, :string
  end
end
