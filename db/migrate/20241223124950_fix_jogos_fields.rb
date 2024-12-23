class FixJogosFields < ActiveRecord::Migration[7.2]
  def change
    rename_column :jogos, :clube_visitante_id, :clube_visitante_id
    rename_column :jogos, :clube_mandante_id, :clube_mandante_id
  end
end
