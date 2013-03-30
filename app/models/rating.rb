class Rating < ActiveRecord::Base
  belongs_to :venue
  belongs_to :meal
  belongs_to :user
  attr_accessible :comments, :posted, :rate, :venue_id, :meal_id
  def venue_name
  	venue.name if venue
  end
  def meal_name
  	meal.type if meal
  end
end
