class City < ApplicationRecord
  belongs_to :state

  validates :name, :health, presence: true, uniqueness: true

end
