class User < ApplicationRecord
  has_many :trips, dependent: :destroy
  validates :email, presence: :true
  validates :password, length: {minimum: 10 }, presence: :true
end
