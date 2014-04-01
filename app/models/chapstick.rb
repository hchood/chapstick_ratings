class Chapstick < ActiveRecord::Base
  validates :brand, presence: true

  has_many :ratings, dependent: :destroy
  has_many :raters, through: :ratings, source: :users
end
