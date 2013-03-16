class Text < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :source
end
