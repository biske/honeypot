class User < ActiveRecord::Base
  has_many :tasks
  has_many :point_of_views
  # Include default devise modules. Others available are:
  # :token_authenticatable,
  # :lockable, :timeoutable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
         
  # Setup accessible (or protected) attributes for your model
  #attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me,
  #                :provider, :uid
  
  validates_presence_of :first_name, :last_name
  validates_uniqueness_of :email, :case_sensitive => false
  
  def fullname
    self.first_name + " " + self.last_name
  end
  
  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.new(first_name:auth.extra.raw_info.first_name,
                          last_name:auth.extra.raw_info.last_name,
                          provider:auth.provider,
                          uid:auth.uid,
                          email:auth.info.email,
                          password:Devise.friendly_token[0,20]
                          )
    end
    user.skip_confirmation!
    user.save!
    user
  end
  
  
  def self.new_with_session(params, session)
    super.tap do |user|
      # take a look what is effect of assign here
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
  
  
  # Override default update method so it accepts updating without current password
  def update_with_password(params={})
    current_password = params.delete(:current_password)
    check_password = false
    if params[:password].blank?
      params.delete(:password)
      if params[:password_confirmation].blank?
        params.delete(:password_confirmation)
        check_password = false
      end 
    end
    result = if valid_password?(current_password) || !check_password
      update_attributes(params)
    else
      self.errors.add(:current_password, current_password.blank? ? :blank : :invalid)
      self.attributes = params
      false
    end
    clean_up_passwords
    result
  end
  
end