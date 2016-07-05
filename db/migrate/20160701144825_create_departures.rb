class CreateDepartures < ActiveRecord::Migration[5.0]
  def change
    create_table :departures do |t|
      t.date :fecha
      t.integer :numero
      t.references :articulos, foreign_key: true
      t.integer :piezas
      t.string :solicita
      t.string :autoriza

      drop_column :articulos_id
      add_column :articulo
      t.timestamps
    end
  end
end
