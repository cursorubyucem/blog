class AyudaController < ApplicationController
  def index
  end

  def pagina
  	render text: "Respondiendo desde pagina - Estamos en la página: #{ params[:id] }"
  end

  def editar
  end
end
