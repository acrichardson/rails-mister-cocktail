class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true

  # description = %i[5ml 10ml 15ml 20ml 25ml 30ml 40ml 50ml 60ml 70ml 100ml 200ml top_up 8_leaves]
end
