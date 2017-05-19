class City < ApplicationRecord

  validates :name, :health, presence: true, uniqueness: true
  
end
