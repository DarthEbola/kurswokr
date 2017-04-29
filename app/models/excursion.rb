class Excursion < ActiveRecord::Base
  belongs_to :city

  validates :name, :describe, presence: true
  validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}
end
