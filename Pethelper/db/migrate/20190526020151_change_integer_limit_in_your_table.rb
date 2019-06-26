class ChangeIntegerLimitInYourTable < ActiveRecord::Migration
  def change
     change_column :funcionarios, :matricula, :integer, limit: 8
     change_column :funcionarios, :celular, :integer, limit: 8
   end 
end
