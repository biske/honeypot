class CreatePointOfViews < ActiveRecord::Migration
  def change
    create_table :point_of_views do |t|
      t.string :who
      t.text :what
      t.string :where
      t.integer :duration
      t.decimal :how_much
      t.string :contact

      t.timestamps
    end
  end
end
