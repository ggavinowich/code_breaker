class CodeBreakerModel
    attr_reader :mensaje
    attr_reader :resultado
    def initialize
        @mensaje= []
        @mensaje.push "Bienvenido a Codebreaker"
        @secret_number = rand(1..10).to_s
        @resultado = []
    end

    def set_secret_number(secret_number)
        @secret_number = secret_number
    end

    def get_secret_number()        
        return @secret_number
    end

    def guess_number(guess)
        if guess == @secret_number
            @resultado.push([guess, "¡Número correcto!"])
        else
            @resultado.push([guess, ":("])
        end
    end    

    def get_secret_number()
        return @secret_number
    end

    def reiniciar_juego()
        @secret_number = rand(1..10).to_s
        @resultado = []
    end
end