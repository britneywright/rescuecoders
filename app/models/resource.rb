class Resource < ActiveRecord::Base
	has_and_belongs_to_many :languages
	has_and_belongs_to_many :levels
	has_and_belongs_to_many :prices
	has_and_belongs_to_many :kinds
end