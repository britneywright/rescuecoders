class RemoveColumnsFromResources < ActiveRecord::Migration
  def change
    remove_column :resources, :kind, :string
    remove_column :resources, :level, :string
    remove_column :resources, :cost, :string
  end
end
