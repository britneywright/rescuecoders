class CreatePriceResource < ActiveRecord::Migration
  def change
    create_table :prices_resources, :id => false do |t|
      t.integer :price_id
      t.integer :resource_id
    end
  end
end
