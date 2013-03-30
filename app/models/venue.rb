class Venue < ActiveRecord::Base
	has_many :meals
  attr_accessible :avg, :location, :name
end
