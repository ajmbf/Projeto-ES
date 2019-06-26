class FormsController < ApplicationController
   skip_before_action :verify_authenticity_token
   
   
  def new
    @form = Form.new
   end  
   
   
 def create
    @form = Form.new(form_params)
    if @form.save
      render 'obrigado'
    else
      render 'new'
    end
  end
  
  
  
  
  
  def index
    @forms = Form.where(status: 0, casa_id: get_casa_id)
   
  end
  
  
  
  def finalizar
   
   @form = Form.find params[:form][:form_id]
 
   @form.update_attribute(:status, 1) 
   @form.save
   render 'done'
   
  end  
  
  
  
   private

    def form_params
      params.require(:form).permit(:nome,:rg,:telefone, :endereco, :panimal, :qanimal, :tcasa,:casa_id,:animal_id )
    end
  
  
  
end
