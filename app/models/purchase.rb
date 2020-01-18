class Purchase < ApplicationRecord
  belongs_to :user
  # has_many :tickets
  validates :date, :amount, presence: true
end
