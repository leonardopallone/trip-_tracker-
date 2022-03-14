class Trip < ApplicationRecord

  belongs_to :user
  
  validates :name, :duration :location, presence: true
end
