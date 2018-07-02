class Artist < ApplicationRecord
  has_and_belongs_to_many :albums, dependent: :destroy

  # Validations
  validates :name, length: { minimum: 3, maximum: 255}
  validates :genre, length: { minimum: 3, maximum: 255}
end
