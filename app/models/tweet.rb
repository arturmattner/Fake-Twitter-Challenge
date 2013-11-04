class Tweet < ActiveRecord::Base
  attr_accessible :tweet

  validates :tweet, :presence => true
  validates :tweet, :length => { :minimum => 1, :maximum => 140 }
end
