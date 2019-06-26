class AdicionarCasaAbrigo < ActiveRecord::Migration
  def change
    add_column :funcionarios, :casa_id, :integer
  end
end
