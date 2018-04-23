class User < ApplicationRecord
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable, :validatable
  validates :first_name, :last_name, presence: true

  include DeviseTokenAuth::Concerns::User
end
