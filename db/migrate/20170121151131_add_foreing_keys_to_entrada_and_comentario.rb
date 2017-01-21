class AddForeingKeysToEntradaAndComentario < ActiveRecord::Migration
  def change
	add_foreign_key :entradas, :seguridad_usuarios
	add_foreign_key :comentarios, :seguridad_usuarios
	add_foreign_key :comentarios, :entradas
  end
end
