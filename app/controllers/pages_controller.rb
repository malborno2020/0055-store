class PagesController < ApplicationController
  def home
    cookies.signed[:mi_primera_cookie] = "hola mundo"

  end
end
