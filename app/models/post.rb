class Post < ActiveRecord::Base
  attr_accessible :body, :title, :visits
  attr_accessible :photo, :logo
  has_attached_file :photo
  has_attached_file :logo
  #validates_attachment_presence :photo

  #validates_attachment_presence :logo

  has_many :parts
  
end
