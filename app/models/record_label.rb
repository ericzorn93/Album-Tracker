class RecordLabel < ApplicationRecord
  has_many :albums, dependent: :destroy

  # Validations
  validates :name, length: {minimum: 5, maximum: 50}, presence: true
end
