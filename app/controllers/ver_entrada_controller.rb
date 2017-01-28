class VerEntradaController < ApplicationController
  def index
	id = params[:id]
	@entrada = Entrada.find(id)
	@comentarios = if seguridad_usuario_signed_in?
		if @entrada.seguridad_usuario_id == current_seguridad_usuario.id
			@entrada.comentarios.order(fecha: :desc, hora: :desc)
		else
			@entrada.comentarios.where(revisado: true)
		.order(fecha: :desc, hora: :desc)
		end
	else
		@entrada.comentarios.where(revisado: true)
		.order(fecha: :desc, hora: :desc)
	end

	

  end

  def agregar_comentario
  	entrada_id = params[:entrada_id].to_i
  	texto = params[:texto]

  	comentario = Comentario.new
  	comentario.entrada_id = entrada_id
  	comentario.texto = texto
  	comentario.fecha = Date.today
  	comentario.hora = Time.now
  	comentario.seguridad_usuario_id = current_seguridad_usuario.id

  	if comentario.save
  		flash[:notice] = "Guardado correctamente"
  	else
  		flash[:alert] = "Error al guardar"
  	end

  	redirect_to '/ver_entrada/' + entrada_id.to_s

  end

  def revisar_comentario
  	comentario_id = params[:comentario_id].to_i
  	comentario = Comentario.find(comentario_id)
  	comentario.revisado = true

  	if comentario.save
  		flash[:notice] = 'Guardado correctamente'
  	else
  		flash[:alert] = 'Error al guardar'
  	end

  	redirect_to '/ver_entrada/' + comentario.entrada_id.to_s


  end


end
