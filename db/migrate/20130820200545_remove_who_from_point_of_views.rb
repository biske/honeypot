class RemoveWhoFromPointOfViews < ActiveRecord::Migration
  def change
    change_table :point_of_views do |t|
      t.remove :who
    end
  end
end
