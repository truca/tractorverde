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
    
        @orders = Order.where(:client_id => 1)
    end
end
