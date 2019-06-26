module FormsHelper
    
    def getNome(id)
        @animal = Animal.find(id)
        return @animal.nome
    end
    
end
