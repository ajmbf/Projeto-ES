class SessionsController < ApplicationController
  
  
  
  
    
  def new
    render 'login'
  end
  
  
  
   def create
    funcionario = Funcionario.find_by(matricula: params[:session][:matricula].downcase)
    if funcionario && funcionario.authenticate(params[:session][:password])
      log_in funcionario
      redirect_to funcionario
    else
     render 'login'
   
    end
  end
  
  
  
   def destroy
    log_out
    redirect_to root_url
  end
  

  
  
 
  
end
