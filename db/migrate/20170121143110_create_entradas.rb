class CreateEntradas < ActiveRecord::Migration
  def change
    create_table :entradas do |t|
      t.date :fecha, null: false
      t.string :titulo, limit: 250, null: false
      t.string :texto, limit: 2000, null: false
      t.integer :visitas, null: false, default: 0
      t.boolean :publicado, null: false, default: false 
      t.integer :seguridad_usuario_id, null: false

      t.timestamps null: false
    end
  end
end
