class Tour < ActiveRecord::Base
  belongs_to :troute

  validates :describe, :departure_date, presence: true
  validates :add_pay, presence: true, numericality: {greater_than_or_equal_to: 0}
  validates :tour_days, presence: true, numericality:
    {only_integer: true, greater_than_or_equal_to: 0}
end
