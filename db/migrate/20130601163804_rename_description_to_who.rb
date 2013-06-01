class RenameDescriptionToWho < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.rename :description, :who
    end
  end
end
