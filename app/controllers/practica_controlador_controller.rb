class PracticaControladorController < ApplicationController
  def index
  	@parametros = params[:nombre]
  	@parametro_apellido = params[:apellido] 	

  	session[:pagina_actual] = 'ayuda'
  	@session = session.to_hash

  	#usuario = SeguridadUsuario.new
  	#usuario.username = 'prueba'
  	#usuario.nombres = 'nombre'
  	#usuario.apellidos = 'apellido'

  	#if usuario.save
  	#	flash[:notice] = "El usuario se ha creado correctamente"
  	#else
  		#flash[:alert] = 'Error al crear usuario'
  	#end

  	cookies[:ultima_categoria] = params[:categoria]
  	@ultima_categoria = cookies[:ultima_categoria]


  	@ip = request.remote_ip
  	@host = request.host

  	@headers = response.headers
  	@status = response.status





  end
end
