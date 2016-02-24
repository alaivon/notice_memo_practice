class AddIsCompletedToNotice < ActiveRecord::Migration
  def change
    add_column :notices, :is_completed, :boolean, default: false
  end
end
