class Clube < ApplicationRecord
    has_many :jogos_mandante, class_name: "Jogo", foreign_key: "clube_mandante_id", dependent: :destroy
    has_many :jogos_visitante, class_name: "Jogo", foreign_key: "clube_visitante_id", dependent: :destroy
end
