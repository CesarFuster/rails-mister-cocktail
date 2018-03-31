class Review < ApplicationRecord
  belongs_to :cocktail
  validates :description, presence: true
  validades :rating, inclusion: { :in => 0..5 }, numericality: { only_integer: true }
end
