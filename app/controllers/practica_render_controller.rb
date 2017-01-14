class PracticaRenderController < ApplicationController
  def index
  	#render nothing: true
  	#render 'ayuda/index'
  	#render plain: "OK :D"
  	#render html: '<strong>No encontrado</strong>'.html_safe
  	#render json: SeguridadUsuario.all
  	#render xml: SeguridadUsuario.all
  	#render js: "alert('hola');"

  	#redirect_to ayuda_index_url
  	redirect_to :back
  end

  def index_dos
  	#render 'index'
  	render :index
  end
end
