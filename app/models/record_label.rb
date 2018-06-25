class RecordLabel < ApplicationRecord
  has_many :albums, dependent: :destroy

  validates :name, length: {minimum: 5, maximum: 50}
end
