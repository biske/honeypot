class Task < ActiveRecord::Base
  belongs_to :user
  acts_as_gmappable check_process: false
  mount_uploader :image, ImageUploader
  #attr_accessible :title, :who, :what, :where, :when, :duration, :how_much, :contact, :image
  
  validates_presence_of :title, :who, :what, :where
  
  def gmaps4rails_address
    self.where
  end
  def gmaps4rails_infowindow
      "<div>This is infowindow.</div>"
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