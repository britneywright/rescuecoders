class AddLinksToUsers < ActiveRecord::Migration
  def change
    add_column :users, :github, :string
    add_column :users, :blog, :string
  end
end
