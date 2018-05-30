class Rent < ApplicationRecord
  validates :to, :from, :user, :book, presence: true
  belongs_to :user
  belongs_to :book  
end
