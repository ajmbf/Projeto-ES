class CasaAbrigosController < ApplicationController
  
  
  def new
    @casa_abrigo = CasaAbrigo.new
  end
  
  
   def index
    @casa_abrigo = CasaAbrigo.all
  end
  
  
  def animaisById(id)
    @animais = Animal.where(casa_abrigo: id)
   
  end
  

  
  def list
    @casa_abrigo = CasaAbrigo.all
  end  
  
  
  def edit
      @casa = CasaAbrigo.find(params[:form][:casa_id])
  end
  
   def update
    @casa = CasaAbrigo.find(params[:id])
    if @casa.update_attributes(casaAbrigo_params)
  
      redirect_to @casa
    else
      render 'edit'
    end
  end 
  
  
  
  
 def destroy
    CasaAbrigo.find(params[:form][:casa_id]).destroy
    redirect_to casaindex_path
  end

  
  
  
  def create
    @casa_abrigo = CasaAbrigo.new(casaAbrigo_params)
    if @casa_abrigo.save
      flash[:success] = "Sucesso na Criação"
      redirect_to @casa_abrigo
    else
      render 'new'
    end
  end
  
  
  
   def show
    @casa_abrigo = CasaAbrigo.find(params[:id])
  end
  
  
  
   private

    def casaAbrigo_params
      params.require(:casa_abrigo).permit(:nome, :documento, :endereco, :telefone, :email, :site, :dadosBanc,:foto)
    end
  
end
