class AddUserIdToPoinOfViews < ActiveRecord::Migration
  def change
    change_table :point_of_views do |t|
      t.references :user
    end
  end
end
