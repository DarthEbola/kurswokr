class City < ActiveRecord::Base
  has_many :excursions
  has_many :troutes

  validates :name, presence: true
end
