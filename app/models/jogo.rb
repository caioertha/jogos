class Jogo < ApplicationRecord
    validates_with JogoValidator
    belongs_to :clube_visitante, class_name: "Clube", foreign_key: "clube_visitante_id"
    belongs_to :clube_mandante, class_name: "Clube", foreign_key: "clube_mandante_id"
end
