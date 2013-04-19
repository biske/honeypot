class Task < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :description
  
  validates_presence_of :title, :description
end
