class Map < ActiveRecord::Base
  acts_as_mappable name: :name
end
