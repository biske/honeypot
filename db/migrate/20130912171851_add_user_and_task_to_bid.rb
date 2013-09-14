class AddUserAndTaskToBid < ActiveRecord::Migration
  def change
  	change_table :bids do |t|
  		t.integer :user_id
  		t.integer :task_id
  	end
  end
end
