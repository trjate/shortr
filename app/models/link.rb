class Link < ActiveRecord::Base
  validates :destination, presence: true

  CHARSET = ('a' .. 'z').to_a + ('A' .. 'Z').to_a + (0..9).to_a
  KEY_LENGTH = 5

  def self.random_string
    (1..KEY_LENGTH).map { CHARSET[rand(CHARSET.size)] }.join
  end

  def self.make_shortr
    shortr = Link.random_string

    while Link.find_by(shortened: shortr)
      shortr = Link.random_string
    end
    shortr
  end
end
