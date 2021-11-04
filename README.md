# README

1. Definir una aplicación que permita tener un administrador
 - CRUD Categories
 - CRUD Products
 - CRUD Role
 - CRUD Users (OPT)

2. Mostrar los productos como si fuera un catálogo:
 - Crear carritos de compras
 - Crear un pedido desde el cliente
 - Enviar un correo de confirmación al cliente sobre el pedido realizado

3. Administrador pueda manipular los pedidos

Iniciar sesión

 - Pre definido un usuario administrador
 - Perfil de usuario
    - Ver mis datos
    - Editar mis datos
    - Eliminar mi perfil

Permitir productos favoritos
- Medios de pago


Comando crear Modelos
rails g model category name:string
rails g model product name:string price:integer description:string category:references
rails g model cart total:integer
rails g model CartProduct cart:references product:references quantity:integer
rails g model status description:string
rails g model role name:string
rails g model user username:string password_digest:string role:references
rails g model order number:string total:integer user:references status:references
rails g model OrderDetail order:references product:references quantity:integer

