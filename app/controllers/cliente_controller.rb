class ClienteController < ApplicationController
    
    
    def index
        if not user_signed_in?
          redirect_to :controller=>'home', :action=>'index'
        end
    end
  
    def pedidos
        if not user_signed_in?
            redirect_to :controller=>'home', :action=>'index'
        end
    
        @orders = Order.where(:user_id => current_user.id)
    end
    
    def agregarDatos
        @user = current_user
    end
    
    def update
        @user.update(user_params)
        respond_with(@user)
    end
end
