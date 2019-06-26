class AddStatusToAnimal < ActiveRecord::Migration
  def change
    add_column :animals, :status, :integer
  end
end
