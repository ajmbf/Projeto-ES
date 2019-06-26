module AnimalsHelper
    
    def nomecasa(id)
        @casa = CasaAbrigo.find(id)
        return @casa.nome
    end
    
end
