class HomeController < ApplicationController
  def index
  	#id = params[:id]
  	#usuario = SeguridadUsuario.new => segurida_usuario.rb
  	#render text: id
  	@entradas = Entrada.all
  end
  def parametro
  	parametro_id = params[:id]
  	render text: 'El parámetro id:' + parametro_id
  end
end
