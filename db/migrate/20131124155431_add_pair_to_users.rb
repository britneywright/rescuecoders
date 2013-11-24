class AddPairToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pair, :string
  end
end
