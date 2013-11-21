class Resource < ActiveRecord::Base
	acts_as_taggable_on
	acts_as_taggable_on :languages, :kinds, :levels, :prices
end