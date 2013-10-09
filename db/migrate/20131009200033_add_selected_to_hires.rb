class AddSelectedToHires < ActiveRecord::Migration
  def change
    add_column :hires, :selected, :boolean
  end
end
