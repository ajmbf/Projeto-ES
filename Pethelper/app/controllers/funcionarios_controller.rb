class FuncionariosController < ApplicationController
  
 def new
    @funcionario = Funcionario.new
 end
  

  
  def newmanager
   @manager = Funcionario.new
  end
  
  
   def show
    @funcionario = Funcionario.find(params[:id])
   end
  
  
   
  def index
    @funcionarios = Funcionario.where(role: "1")
   
  end
  
  def indexf
   @funcionarios = Funcionario.where(role: "2", casa_id: get_casa_id )
  end
  
  
  
  def create
    @funcionario = Funcionario.new(funcionario_params)
    if @funcionario.save
      flash[:success] = "Cadastro realizado"
      redirect_to @funcionario
    else
      render 'new'
    end
  end
  
  
   def createmanager
    @funcionario = Funcionario.new(funcionario_params)
    if @funcionario.save
      flash[:success] = "Cadastro realizado"
      redirect_to managerindex_path
    else
     @manager = Funcionario.new
      render 'newmanager'
    end
   end
  


def destroy
    Funcionario.find(params[:form][:form_id]).destroy
    redirect_to managerindex_path
  end



  
   private

    def funcionario_params
      params.require(:funcionario).permit(:matricula, :nome, :celular,:casa_id,:password, :password_confirmation, :role )
    end
    
    
  
end



