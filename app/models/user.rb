class User < ApplicationRecord
  validates :email, presence: :true
  validates :password, length: {minimum: 10 }, presence: :true
end
