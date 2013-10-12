class CreateHmessages < ActiveRecord::Migration
  def change
    create_table :hmessages do |t|
      t.text :content
      t.references :hire, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
