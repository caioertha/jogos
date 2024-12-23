class JogoValidator < ActiveModel::Validator
    def validate(record)
        if record.time_visitante == record.time_mandante 
            record.errors.add :time_visitante, "Não é possível ter um jogo com times iguais"
        end
    end
end