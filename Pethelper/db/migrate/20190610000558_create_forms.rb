class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :nome
      t.integer :casa_id
      t.integer :animal_id
      t.string :rg
      t.string :telefone
      t.string :endereco
      t.integer :panimal
      t.string :qanimal
      t.string :tcasa

      t.timestamps null: false
    end
  end
end
