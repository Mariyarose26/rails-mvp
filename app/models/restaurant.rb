class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # Keep a seperate CONSTANT array to be able to access it later on in the seed
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  # the name and address should be present
  validates :name, presence: true
  validates :address, presence: true

  validates :category, inclusion: { in: CATEGORY }
end
