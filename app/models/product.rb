class Product < ApplicationRecord
  has_one_attached :photo

  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :category, presence: true

  # validates :lenght, presence: true, numericality: { only_integer: true }
  validates :description, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
end

