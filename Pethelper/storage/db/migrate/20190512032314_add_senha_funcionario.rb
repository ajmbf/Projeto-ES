class AddSenhaFuncionario < ActiveRecord::Migration
  def change
    add_column :funcionarios, :password_digest, :string
  end
end
