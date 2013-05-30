class AddMapColumnsToTask < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.float :latitude
      t.float :longitute
      t.boolean :gmaps
    end
  end
end
