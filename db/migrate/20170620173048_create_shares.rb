class CreateShares < ActiveRecord::Migration[5.0]
  def change
    create_table :shares do |t|
      t.integer :shareholder_id
      t.integer :share_type_id
      t.timestamps null: false
    end
    add_index :shares, :shareholder_id
    add_index :shares, :share_type_id
  end
end
