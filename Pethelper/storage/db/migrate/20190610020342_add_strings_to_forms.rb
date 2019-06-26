class AddStringsToForms < ActiveRecord::Migration
  def change
    change_column :forms, :casa_id, :string
    change_column :forms, :animal_id, :string
  end
end
