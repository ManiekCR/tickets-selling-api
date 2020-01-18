class Event < ApplicationRecord
  has_many :tickets
  validates :name, :date, :time, presence: true
end
