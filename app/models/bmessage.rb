class Bmessage < ActiveRecord::Base
  belongs_to :bid
  belongs_to :user
end
