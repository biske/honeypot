class Hmessage < ActiveRecord::Base
  belongs_to :point_of_view
  belongs_to :user
end
