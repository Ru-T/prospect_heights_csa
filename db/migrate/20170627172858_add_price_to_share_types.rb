class AddPriceToShareTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :share_types, :price, :decimal, precision: 8, scale: 2
  end
end
