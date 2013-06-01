class AddWhatColumn < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.string :what
    end
  end
end
