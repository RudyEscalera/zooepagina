class WelcomeController < ApplicationController
  def index
  end

  def lista_usuario
  	@palabra = ''
    @palabra = params[:palabra]
    @usuarios = User.where("email LIKE '#{@palabra}%'")	
  end

  def perfil
  	@encargado = User.find(params[:id])
  	render 'perfil'
  end
end
