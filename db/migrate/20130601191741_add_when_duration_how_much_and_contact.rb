class AddWhenDurationHowMuchAndContact < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.datetime :when
      t.integer :duration
      t.decimal :how_much
      t.string :contact
    end
  end
end
