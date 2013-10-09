class PointOfView < ActiveRecord::Base
    belongs_to :user
    has_many :hires
    
    acts_as_gmappable check_process: false
  
    def gmaps4rails_address
        self.where
    end
    def gmaps4rails_infowindow
        "<a href='/users/" + self.user_id.to_s + "/point_of_views/" + self.id.to_s + "'>Go to point of view</a>
        <div>Where: #{self.where}</div>
        <div>How much: #{self.how_much}$</div>"
    end

    def is_owned_by?(user)
        self.user == user
    end

    def is_not_owned_by?(user)
        !is_owned_by?(user)
    end

    # Get all active point of views
    def self.active
        PointOfView.all.to_a.keep_if do |point_of_view|
            point_of_view.active?
        end
    end

    def active?
        if (self.created_at + self.duration) > Time.now.utc
          true
        end
    end

    # If nobody hired point of view return true
    def not_hired?
        !self.hire
    end
  
    def days
        if self.duration
            self.duration / 86400
        else
            nil
        end
    end

    def hours
        if self.duration
            self.duration % 86400 / 3600
        else
            nil
        end
    end

    def minutes
        if self.duration
            self.duration % 86400 % 3600 / 60
        else
            nil
        end
    end
end