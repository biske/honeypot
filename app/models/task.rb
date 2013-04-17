class Task < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :description
end
