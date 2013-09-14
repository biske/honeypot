class Task < ActiveRecord::Base
  belongs_to :user
  has_many :bids

  acts_as_gmappable check_process: false
  mount_uploader :image, ImageUploader
  #attr_accessible :title, :who, :what, :where, :when, :duration, :how_much, :contact, :image
  
  validates_presence_of :title, :who, :what, :where
  
  def gmaps4rails_address
    self.where
  end
  def gmaps4rails_infowindow
      "<a href='/users/" + self.user_id.to_s + "/tasks/" + self.id.to_s + "'>Go to task</a>
      <div>Title: #{self.title}</div>
      <div>How much: #{self.how_much}$</div>"
  end

  def is_owned_by?(user)
    self.user == user
  end

  def is_not_owned_by?(user)
    !is_owned_by?(user)
  end

  def self.active
    Task.all.to_a.keep_if do |task|
      task.active?
    end
  end

  def active?
    if (self.when + self.duration) > Time.now.utc
      true
    end
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