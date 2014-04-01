class Chapstick < ActiveRecord::Base
  validates :brand, presence: true

  has_many :ratings
end
