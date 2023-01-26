class AddProductRefToBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :product, null: false, foreign_key: true
  end
end
