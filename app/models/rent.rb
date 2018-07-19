class Rent < ApplicationRecord
  validates :to, :from, presence: true
  belongs_to :user
  belongs_to :book
end
