class Listing < ActiveRecord::Base
  belongs_to :type
  belongs_to :garage
  # attr_accessible :title, :body
end
