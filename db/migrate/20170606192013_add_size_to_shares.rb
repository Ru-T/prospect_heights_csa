class AddSizeToShares < ActiveRecord::Migration[5.0]
  def change
    add_column :shares, :size, :integer
  end
end
