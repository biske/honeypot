class AddAddressToTask < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.string :address
      t.string :city
      t.string :country
    end
  end
end
