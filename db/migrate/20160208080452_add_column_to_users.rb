class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :group, :string
    add_column :users, :profile, :text
    add_column :users, :work, :text
  end
end
