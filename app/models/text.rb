class Text < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :source

  before_save :validate_uniqueness

  def validate_uniqueness
  	self.class.where(external_id:self.external_id, source_id:self.source_id).empty?
  end
end
