Rails.application.routes.draw do
  namespace :admin do
    get 'products',               to:'products#index',   as: 'products'
    get 'products/new',           to:'products#new',     as: 'new_product'
    get 'products/:id',           to:'products#show',    as: 'product'
    get 'products/:id/edit',      to:'products#edit',    as: 'edit_product'

    post 'products',              to: 'products#create'
    put 'products/:id',           to: 'products#update'    
    patch 'products/:id',         to: 'products#update'   
    delete 'products/edit',       to: 'products#destroy'
  

  end
  namespace :admin do
    get 'categories',             to: 'categories#index',   as: 'categories'
    get 'categories/new',         to: 'categories#new',     as: 'new_category'
    get 'categories/:id',         to: 'categories#show',    as: 'category'
    get 'categories/:id/edit',    to: 'categories#edit',    as: 'edit_category'
  
    post 'categories',            to: 'categories#create'
    put 'categories/:id',         to: 'categories#update'    
    patch 'categories/:id',       to: 'categories#update'   
    delete 'categories/edit',     to: 'categories#destroy'
  
  
  
  
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
