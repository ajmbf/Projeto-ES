class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.integer :casa_abrigo
      t.string :tipo
      t.string :raca
      t.float :tamanho
      t.integer :idade
      t.float :peso
      t.string :sexo
      t.text :resumo
      # t.binary :foto

      t.timestamps null: false
    end
  end
end
