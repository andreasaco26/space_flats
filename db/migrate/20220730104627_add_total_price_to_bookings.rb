class AddTotalPriceToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :booking_total_price, :integer
  end
end
