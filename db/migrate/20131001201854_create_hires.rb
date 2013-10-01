class CreateHires < ActiveRecord::Migration
  def change
    create_table :hires do |t|

      t.timestamps
    end
  end
end
