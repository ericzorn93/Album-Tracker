class Album < ApplicationRecord
  belongs_to :record_label, required: true
  has_and_belongs_to_many :artists, dependent: :destroy

  validates :artist_ids, presence: true
  validates :record_label_id, presence: true
  validates :year, presence: true, length: {maximum: 4, minimum: 4}
  validates :band, presence: true, length: {maximum: 250, minimum: 3}
  validates :title, presence: true, length: {maximum: 250, minimum: 3}
  validates :genre, presence: true, length: {maximum: 250, minimum: 3}
  validates :plays, presence: true, length: {maximum: 10, minimum: 1}
end
