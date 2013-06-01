class RenameStreetToWhere < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.rename :street, :where
    end
  end
end
