class AdicionarRoleTypeEmFuncionario < ActiveRecord::Migration
   def change
    add_column :funcionarios, :role, :integer
  end
end
