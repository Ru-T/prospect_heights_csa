class AddAddresstoShareholders < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :shareholder_id
    end
    add_index :addresses, :shareholder_id
  end
end
