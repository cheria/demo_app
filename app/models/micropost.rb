class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  #RDB
  belongs_to :user
  #over140char is NG
  validates :content, :length => { :maximum => 140 }
end
