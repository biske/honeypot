class Hire < ActiveRecord::Base
	belongs_to :user
	belongs_to :point_of_view
end
