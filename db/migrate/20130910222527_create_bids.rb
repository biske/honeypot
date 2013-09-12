class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.text :description
      t.decimal :how_much

      t.timestamps
    end
  end
end
