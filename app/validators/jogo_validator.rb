class JogoValidator < ActiveModel::Validator
    def validate(record)
        if record.clube_visitante_id == record.clube_mandante_id
            record.errors.add :clube_visitante_id, "Não é possível ter um jogo com times iguais"
        end
    end
end