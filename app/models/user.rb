class User < ActiveRecord::Base
	has_many :ratings
  attr_accessible :email, :location
end
