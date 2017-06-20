class AddSizeToShareTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :share_types, :size, :integer
  end
end
