class AddPriceToFlats < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :price, :integer
  end
end
