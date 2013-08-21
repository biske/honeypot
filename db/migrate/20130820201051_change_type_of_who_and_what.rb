class ChangeTypeOfWhoAndWhat < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.change :who, :string
      t.change :what, :text
    end
  end
end
