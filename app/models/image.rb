class Image < ActiveRecord::Base
  belongs_to :garage
  attr_accessible :garage_id, :image_title, :url
end
