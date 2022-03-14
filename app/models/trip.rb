class Trip < ApplicationRecord
  has_many :locations, dependent: :destroy
  belongs_to :user

  validates :name, :duration :location, presence: true
end
