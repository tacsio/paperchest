class Review < ActiveRecord::Base
  attr_accessible :text

  belongs_to :paper
end
