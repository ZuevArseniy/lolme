class Source < ActiveRecord::Base
  attr_accessible :name, :url
  has_many :images
  has_many :texts
end
