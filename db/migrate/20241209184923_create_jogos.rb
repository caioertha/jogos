class CreateJogos < ActiveRecord::Migration[7.2]
  def change
    create_table :jogos do |t|
      t.integer :placar_visitante
      t.integer :clube_visitante_id
      t.integer :placar_mandante
      t.integer :clube_mandante_id
      t.string :local

      t.timestamps
    end
  end
end
