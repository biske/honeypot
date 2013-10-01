class AddUserAndPoinOfViewToHire < ActiveRecord::Migration
  def change
  	change_table :hires do |t|
  		t.references :user
  		t.references :point_of_view
  	end
  end
end
