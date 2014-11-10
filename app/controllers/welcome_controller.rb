class WelcomeController < ApplicationController
  def index
  end

  def lista_usuario
  	@palabra = ''
    @palabra = params[:palabra]
    @usuarios = User.where("email LIKE '#{@palabra}%'")	
  end

  def perfil
        @usuario = User.find(params[:id])
        render 'perfil'
  end

  def eliminar
    user=User.find(params[:id])
    user.destroy
    @usuarios = User.all
    render 'lista_usuario'
  end

  def habilitarlo
    usuario = User.find(params[:id])
    usuario.estado = true
    usuario.save
    @usuarios = User.where("email LIKE '#{@palabra}%'") 
    render 'lista_usuario'
  end

  def desactivarlo
    usuario = User.find(params[:id])
    usuario.estado = nil
    usuario.save
    @usuarios = User.where("email LIKE '#{@palabra}%'") 
    render 'lista_usuario'
  end
  private
end
