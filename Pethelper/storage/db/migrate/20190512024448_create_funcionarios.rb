class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.integer :matricula
      t.integer :celular
      t.string :nome
      
      t.timestamps null: false
    end
  end
end
