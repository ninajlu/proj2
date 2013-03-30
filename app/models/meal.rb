class Meal < ActiveRecord::Base
  belongs_to :venue
  attr_accessible :end, :start, :type, :venue_id
  def venue_name
  	venue.name if venue
  end
end
