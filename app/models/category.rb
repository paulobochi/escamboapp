class Category < ApplicationRecord
  scoped_search on: [:name]

  validates_presence_of :name
end
