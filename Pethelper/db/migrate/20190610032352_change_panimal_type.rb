class ChangePanimalType < ActiveRecord::Migration
  def change
     change_column :forms, :panimal, :string
  end
end
