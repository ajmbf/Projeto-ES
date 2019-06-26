class CreateCasaAbrigos < ActiveRecord::Migration
  def change
    create_table :casa_abrigos do |t|
      t.string :nome
      t.string :documento
      t.string :endereco
      t.string :telefone
      t.string :email
      t.string :site
      t.string :dadosBanc

      t.timestamps null: false
    end
  end
end
