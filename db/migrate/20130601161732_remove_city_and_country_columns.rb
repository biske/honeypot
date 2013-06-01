class RemoveCityAndCountryColumns < ActiveRecord::Migration
  def up
    change_table :tasks do |t|
      t.remove :city, :country
    end
  end

  def down
    change_table :tasks do |t|
      t.string :city
      t.string :country
    end
  end
end
