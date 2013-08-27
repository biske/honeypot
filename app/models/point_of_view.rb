class PointOfView < ActiveRecord::Base
  belongs_to :user
  acts_as_gmappable check_process: false
  
  def gmaps4rails_address
    self.where
  end
  def gmaps4rails_infowindow
      "<div>Where: #{self.where}</div>
      <div>How much: #{self.how_much}$</div>"
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
