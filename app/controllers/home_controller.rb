class HomeController < ApplicationController
  def index
  	#id = params[:id]
  	#usuario = SeguridadUsuario.new => segurida_usuario.rb
  	#render text: id
  	#@entradas = Entrada.all
    @entradas = Entrada.select('entradas.id, entradas.fecha, 
      entradas.titulo, entradas.texto, seguridad_usuarios.username,
      count(comentarios.id) as cantidad_comentario')
    .joins(:seguridad_usuario)
    .joins('left join comentarios on comentarios.entrada_id = entradas.id')
    .group('entradas.id, entradas.fecha, 
      entradas.titulo, entradas.texto, seguridad_usuarios.username')
  end
  def parametro
  	parametro_id = params[:id]
  	render text: 'El parámetro id:' + parametro_id
  end
end
