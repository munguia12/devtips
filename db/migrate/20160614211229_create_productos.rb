class CreateProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :productos do |t|
      t.string :articulos
      t.integer :existencia
      t.integer :stockmin
      t.integer :stockmax
      t.boolean :disponibles

      t.timestamps
    end
  end
end
