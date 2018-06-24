class Album < ApplicationRecord
  # belongs_to :record_label
  # validates :record_label_id, presence: true

  belongs_to :record_label, required: false
  validates :record_label_id, presence: true
end
