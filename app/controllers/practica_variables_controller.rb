class PracticaVariablesController < ApplicationController
  def index
  	@titulo = 'Practica variables de instancia'
  	opcion = 3 
  	
  	#@mensaje = ''
  	#case opcion
  	#when 1
  	#	@mensaje = 'Servicio al cliente'
  	#when 2
  	#	@mensaje = 'ventas'
  	#when 3
  	#	@mensaje = 'reclamos'
  	#else
    #	@mensaje = 'no existe esa opción'
  	#end

  	#@mensaje = case opcion
	#		  	when 1
	#		  		'Servicio al cliente'
	#		  	when 2
	#		  		'ventas'
	#		  	when 3
	#		  		'reclamos'
	#		  	else
	#		  		'no existe esa opción'
	#		  	end

	@mensaje = 'Se guardo exitosamente!!'
	
	mensaje_opcion(opcion)

  end

  def mensaje_opcion(opcion)
  	@mensaje_opcion_seleciona = case opcion
			  	when 1
			  		'Servicio al cliente'
			  	when 2
			  		'ventas'
			  	when 3
			  		'reclamos'
			  	else
			  		'no existe esa opción'
			  	end

  end

end
