class AddAttributesToNotices < ActiveRecord::Migration
  def change
    add_column :notices, :updated_on, :date
    add_column :notices, :created_on, :date
  end
end
