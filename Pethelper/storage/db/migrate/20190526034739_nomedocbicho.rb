class Nomedocbicho < ActiveRecord::Migration
  def change
    add_column :animals, :nome, :string
  end
end
