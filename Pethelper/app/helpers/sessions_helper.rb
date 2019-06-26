module SessionsHelper
    
    
def log_in(funcionario)
    session[:funcionario_id] = funcionario.id
end


 def current_user
    if session[:funcionario_id]
      @current_user ||= Funcionario.find_by(id: session[:funcionario_id])
    end
  end



def logged_in?
    !current_user.nil?
end


def logged_in_redirect
  
end



 
  def log_out
    session.delete(:funcionario_id)
    @current_user = nil
  end
  
    
  def is_admin?
  current_user.role == "0"
  end  
  
  def is_manager?
  current_user.role == "1"
  end 
  
  def get_casa_id
    return current_user.casa_id
  end
  
  
  
end
