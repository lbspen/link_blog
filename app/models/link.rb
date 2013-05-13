class Link < ActiveRecord::Base
  attr_accessible :URL, :date_found

  validates :URL, :presence => true
end
