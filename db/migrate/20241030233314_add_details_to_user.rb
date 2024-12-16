class AddDetailsToUser < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :name, :string
    add_column :users, :avatar, :string
    add_column :users, :isadmin, :boolean, :default => false
  end
end
