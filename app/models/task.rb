class Task < ActiveRecord::Base
  belongs_to :user
  acts_as_gmappable
  attr_accessible :title, :description, :where
  
  validates_presence_of :title, :description, :where
  
  def gmaps4rails_address
    self.where
  end
end