class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many_attached :photos
  has_one :description, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :photos, presence: true
end
