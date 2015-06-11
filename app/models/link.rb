class Link < ActiveRecord::Base
  validates :destination, presence: true

end
