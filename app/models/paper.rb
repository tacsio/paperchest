class Paper < ActiveRecord::Base
  attr_accessible :abstract, :citation, :title, :file, :tag_list

  has_many :reviews, :dependent => :destroy

	acts_as_taggable

  has_attached_file :file,
    :storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml"
end
