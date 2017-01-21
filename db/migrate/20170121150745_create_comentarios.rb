class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.integer :entrada_id, null: false
      t.date :fecha, null: false
      t.time :hora, null: false
      t.string :texto, null: false, limit: 2000
      t.boolean :revisado, null: false, default: false
      t.integer :seguridad_usuario_id, null:false

      t.timestamps null: false
    end
  end
end
