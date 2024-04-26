class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :titulo
      t.string :classificacao
      t.text :descricao
      t.datetime :dataLancamento

      # Responsável por controlar data de criação e modificação
      t.timestamps
    end
  end
end
