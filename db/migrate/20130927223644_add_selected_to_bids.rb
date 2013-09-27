class AddSelectedToBids < ActiveRecord::Migration
  def change
  	change_table :bids do |t|
  		t.boolean :selected
  	end
  end
end
