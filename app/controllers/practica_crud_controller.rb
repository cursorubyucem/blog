class PracticaCrudController < ApplicationController
  def index


  	#********** CREATE ***********
  	#entrada = Entrada.create({ fecha: Date.today, 
  	#							titulo: 'Mi primer entrada',
  	#							texto: 'Texto de la entrada',
  	#							seguridad_usuario_id: 1
  	#							})


  	#entrada = Entrada.new
  	#entrada.fecha = Date.today
  	#entrada.titulo = 'Mi segunda entrada'
  	#entrada.texto = 'Texto de mi segunda entrada'
  	#entrada.seguridad_usuario_id = 1
  	#entrada.save
  	#********** /CREATE ***********

  	#********** READ ***********
  	#Seleciona todos los registros de la tabla
  	#entradas = Entrada.all 

  	#Selecciona un registro por el id del registro
  	#entradas = Entrada.find(1)

  	#Seleccionar varios registros mediante su id
  	#entradas = Entrada.find([1,3])

  	#obtener el primer elemento
  	#entradas = Entrada.first
  	
  	#entradas = Entrada.first(2)

  	#entradas = Entrada.order('fecha desc')

  	#entradas = Entrada.order('fecha desc').first

  	#entradas = Entrada.order('fecha desc').last

  	#entradas = Entrada.find_by fecha: Date.today

  	#********** /READ ***********


  	#********** UPDATE ***********
  	#entrada = Entrada.find(1)
  	#entrada.titulo = 'Titulo actualizado'
  	#entrada.save

  	#entrada = Entrada.find(1)
  	#entrada.update(titulo: 'Actualizado nuevamente')

  	#********** /UPDATE ***********


	#********** DESTROY ***********  

	#entrada = Entrada.find(1)	
	#entrada.destroy

	#********** /DESTROY ***********  	

    entradas = Entrada.joins(:seguridad_usuario).where(seguridad_usuario_id: 1)


  	render json: entradas

  end
end
