class RecordLabel < ApplicationRecord
  has_many :albums, dependent: :destroy
end
