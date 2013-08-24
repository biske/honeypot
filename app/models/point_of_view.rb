class PointOfView < ActiveRecord::Base
  belongs_to :user
  acts_as_gmappable
  
  def gmaps4rails_address
    self.where
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
