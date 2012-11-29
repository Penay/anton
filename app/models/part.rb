class Part < ActiveRecord::Base
  attr_accessible :body

  
  belongs_to :post

end
