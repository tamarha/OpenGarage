class Type < ActiveRecord::Base
  attr_accessible :description, :icon_url, :name

  has_many :listing
end
