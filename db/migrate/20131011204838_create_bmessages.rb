class CreateBmessages < ActiveRecord::Migration
  def change
    create_table :bmessages do |t|
      t.text :content
      t.references :bid, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
