class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :url
      t.text :description
      t.string :type
      t.string :level
      t.string :cost

      t.timestamps
    end
  end
end
