class AddStatusToForm < ActiveRecord::Migration
  def change
    add_column :forms, :status, :integer, :default => 0
  end
end
