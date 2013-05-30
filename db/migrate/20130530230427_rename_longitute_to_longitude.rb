class RenameLongituteToLongitude < ActiveRecord::Migration
  def change
  	change_table :tasks do |t|
  		t.rename :longitute, :longitude
  	end
  end
end
