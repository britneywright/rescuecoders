class CreateLevelResource < ActiveRecord::Migration
  def change
    create_table :levels_resources, :id => false do |t|
      t.integer :level_id
      t.integer :resource_id
    end
  end
end
