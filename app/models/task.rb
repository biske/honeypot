class Task < ActiveRecord::Base
  belongs_to :user
  acts_as_gmappable
  attr_accessible :title, :what, :who, :where
  
  validates_presence_of :title, :what, :who, :where
  
  def gmaps4rails_address
    self.where
  end
end