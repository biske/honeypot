class Hire < ActiveRecord::Base
	belongs_to :user
	belongs_to :point_of_view

    def is_owned_by?(user)
        self.user == user
    end

    # Called when user want to mark bid as selected.
    def select
        self.selected = true
        self.save!
    end

    def not_selected?
        !self.selected
    end
end