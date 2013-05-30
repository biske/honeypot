class RenameAddressToStreet < ActiveRecord::Migration
  def change
  	change_table :tasks do |t|
  		t.rename :address, :street
  	end
  end
end
