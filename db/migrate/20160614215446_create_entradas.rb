class CreateEntradas < ActiveRecord::Migration[5.0]
  def change
    create_table :entradas do |t|
      t.date :fecha
      t.integer :remision
      t.integer :cantidad
      t.string :articulos
      t.text :refaccion
      t.string :recibe
      t.string :proveedor
      t.string :contacto
      t.string :autoriza
      t.string :solicta
      t.references :articulos, foreign_key: true
      t.timestamps
      
      drop_table :ssalidas
      drop_table :salidas
      drop_table :salida1s 
    end
  end
end
