class Hmessage < ActiveRecord::Base
  belongs_to :hire
  belongs_to :user
end
