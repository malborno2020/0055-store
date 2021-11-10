class PagesController < ApplicationController
  def home
    # 1.Preguntar si existe la vraiable cookies[:cart_id]
    if cookies[:cart_id] 

      #si existe: Buscar el registro de Cart segun el cookies[:cart_id]
      #definir una variable @cart
      @cart = Cart.find(cookies[:cart_id])
    else
    
    # si no existe: Crear un regsitro en cart 
    #asignar la cookie con el id
      @cart = Cart.create(total: 0)
      cookies[:cart_id] = @cart.id
    end
    #2. Mostrar la cantidad de productos e el carrito
  end
end
