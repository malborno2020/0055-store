module PagesHelper

    def cookie_handler
        if cookies[:plana]
            puts cookies[:plana]
          else
            cookies[:plana] = "COOKIE PLANA 🥞"
          end
      
          if cookies.signed[:firmada]
            puts cookies.signed[:firmada]
          else
            cookies.signed[:firmada] = "Hola mundo FIRMADO 🍕"
          end
      
          if cookies.encrypted[:encriptada]
            puts cookies.encrypted[:encriptada]
          else
            cookies.encrypted[:encriptada] = "TEXTO SECRETO 🍔"
          end
      
          if session[:variable_sesion]
            puts session[:variable_sesion]
          else
            session[:variable_sesion] = "EN LA SESION 🥓"
          end
    end

    def print_icon
      puts "£".center(50,"-")
    end
      
    def set_cart_from_cookie
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
  end
end
