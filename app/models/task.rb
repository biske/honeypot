class Task < ActiveRecord::Base
  belongs_to :user
  acts_as_gmappable
  attr_accessible :title, :who, :what, :where, :when, :duration, :how_much, :contact
  
  validates_presence_of :title, :who, :what, :where
  
  def gmaps4rails_address
    self.where
  end
end