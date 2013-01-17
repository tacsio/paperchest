class Paper < ActiveRecord::Base
  attr_accessible :abstract, :citation, :title

  has_many :reviews, :dependent => :destroy
  has_many :tags, :dependent => :destroy
end
