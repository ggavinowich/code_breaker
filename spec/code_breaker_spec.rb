require './lib/code_breaker_model'

describe CodeBreakerModel do

    it "inicia con Bienvenido a Codebreaker" do
        code_breaker_model = CodeBreakerModel.new
        msg= code_breaker_model.mensaje
        expect(msg[0]).to eq "Bienvenido a Codebreaker"
    end
    
    it "setear un número de un dígito" do
        code_breaker_model = CodeBreakerModel.new
        code_breaker_model.set_secret_number "4"
        expect(code_breaker_model.get_secret_number()).to eq "4"
    end

    it "adivinar numero correcto" do
        code_breaker_model = CodeBreakerModel.new
        code_breaker_model.set_secret_number "4"
        expect(code_breaker_model.guess_number("4")).to eq [["4", "¡Número correcto!"]]
    end

    it "adivinar numero incorrecto" do
        code_breaker_model = CodeBreakerModel.new
        code_breaker_model.set_secret_number "4"
        expect(code_breaker_model.guess_number("5")).to eq [["5", ":("]]
    end

    it "probar get secret number" do
        code_breaker_model = CodeBreakerModel.new
        code_breaker_model.set_secret_number "4"
        expect(code_breaker_model.get_secret_number).to eq "4"
    end    
        
    it "probar numero random" do
        code_breaker_model = CodeBreakerModel.new
        numero1 = code_breaker_model.get_secret_number
        code_breaker_model = CodeBreakerModel.new
        numero2 = code_breaker_model.get_secret_number
        expect(numero1).not_to eq numero2
    end

    it "reiniciar juego" do
        code_breaker_model = CodeBreakerModel.new
        numero1 = code_breaker_model.get_secret_number
        code_breaker_model.guess_number("5")
        code_breaker_model.reiniciar_juego
        numero2 = code_breaker_model.get_secret_number
        expect(numero1).not_to eq numero2
        expect(code_breaker_model.resultado).to eq []
    end
end