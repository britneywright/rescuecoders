class LanguagesResources < ActiveRecord::Migration
  def change
  	create_table :languages_resources, :id => false do |t|
	  	t.integer :language_id
	  	t.integer :resource_id
  	end
  end
end
