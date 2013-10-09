class AddHowMuchToHires < ActiveRecord::Migration
  def change
    add_column :hires, :how_much, :decimal
  end
end
