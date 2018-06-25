class Album < ApplicationRecord
  belongs_to :record_label, required: true
  validates :record_label_id, presence: true
  validates :year, presence: true, length: {maximum: 4, minimum: 4}
end
