class Paper < ActiveRecord::Base
  attr_accessible :abstract, :citation, :title, :file

  has_many :reviews, :dependent => :destroy
  has_many :tags, :dependent => :destroy

  has_attached_file :file,
    :storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml"
end
