class CreateTableKindResource < ActiveRecord::Migration
  def change
    create_table :kinds_resources, :id => false do |t|
      t.integer :kind_id
      t.integer :resource_id
    end
  end
end
