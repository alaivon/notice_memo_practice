class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.integer :category_id
      t.integer :user_id
      t.string :location
      t.string :event
      t.text :postscript
      t.datetime :event_time

      t.timestamps null: false
    end
  end
end
