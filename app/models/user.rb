class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  validates_presence_of :first_name
  validates_uniqueness_of :first_name, :email, :case_sensitive => false
end
