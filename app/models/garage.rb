class Garage < ActiveRecord::Base
  belongs_to :user
  attr_accessible  	:title,  :description,  :status, 
  					:street, :city, :state, :zipcode, :date, :user_id

  validates :title, :description, :presence => true,
  			:length					=> { :minimum => 8 }

  validates :street, :city, :state, :presence => true

  validates :zipcode, :presence => true,
  			:length 			=> { :within => 5..11 },
  			:numericality 		=> { :only_integer => true }

  validates :date, :user_id, :presence => true

  has_many :listing
  has_many :image
end
