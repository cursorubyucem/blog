class VerEntradaController < ApplicationController
  def index
	id = params[:id]
	@entrada = Entrada.find(id)
	@comentarios = @entrada.comentarios

  end
end
