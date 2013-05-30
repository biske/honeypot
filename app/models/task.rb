class Task < ActiveRecord::Base
  belongs_to :user
  acts_as_gmappable
  attr_accessible :title, :description, :street, :city, :country
  
  validates_presence_of :title, :description
  
  def gmaps4rails_address
    "#{self.street}, #{self.city}, #{self.country}"
  end
end