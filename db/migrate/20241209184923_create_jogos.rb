class CreateJogos < ActiveRecord::Migration[7.2]
  def change
    create_table :jogos do |t|
      t.integer :placar_visitante
      t.integer :time_visitante
      t.integer :placar_mandante
      t.integer :time_mandante
      t.string :local

      t.timestamps
    end
  end
end
