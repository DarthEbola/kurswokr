class Troute < ActiveRecord::Base
  belongs_to :city
  has_many :tours

  validates :name, :describe, presence: true
  validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}
end
