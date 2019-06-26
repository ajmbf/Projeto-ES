class AdicionarChaveFuncionario < ActiveRecord::Migration
  def change
    add_index :funcionarios, :matricula, unique: true
  end
end
