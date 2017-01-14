class AyudaController < ApplicationController
  layout 'administracion', except: [:editar]

  def index
  	#render layout: 'administracion'
  end

  def pagina
  	render text: "Respondiendo desde pagina - Estamos en la página: #{ params[:id] }"
  end

  def editar
  	render layout: false
  end
end
