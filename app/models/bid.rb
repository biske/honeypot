class Bid < ActiveRecord::Base
	belongs_to :user
	belongs_to :task

	def is_owned_by?(user)
    self.user == user
  end
end
