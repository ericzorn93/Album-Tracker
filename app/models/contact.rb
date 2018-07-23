class Contact < ApplicationRecord
  validates :first_name, presence: true, length: { minimum: 2, maximum: 250}
  validates :last_name, presence: true, length: { minimum: 2, maximum: 250}
  validates :email, presence: true, length: { minimum: 5, maximum: 250}
  validates :phone_number, presence: true, length: { minimum: 10, maximum: 20}
end
