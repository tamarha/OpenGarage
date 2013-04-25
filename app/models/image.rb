class Image < ActiveRecord::Base
  belongs_to :garage
  attr_accessible :image_title, :url
end
