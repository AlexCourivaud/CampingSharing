class User < ApplicationRecord
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         
  has_many :bookings_as_a_renter, class_name: "Booking", dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :bookings_as_a_owner, class_name: "Booking", through: :products, source: :bookings

  validates :name, presence: true
  validates :first_name, presence: true
end
