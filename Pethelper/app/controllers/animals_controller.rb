class AnimalsController < ApplicationController
  def new
    @animal = Animal.new
  end
  
 


  
  
  
  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      flash[:success] = "Animal Adicionado!"
      render 'done'
    else
      render 'new'
    end
  end



 def show
    @animal = Animal.find(params[:id])
  end
  



  
  
   private

    def animal_params
      params.require(:animal).permit(:nome, :casa_abrigo, :tipo, :raca, :tamanho, :idade, :peso, :sexo, :resumo, :foto ) 
    end
  
  
end
