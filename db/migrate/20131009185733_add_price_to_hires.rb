class AddPriceToHires < ActiveRecord::Migration
  def change
    add_column :hires, :price, :decimal
  end
end
