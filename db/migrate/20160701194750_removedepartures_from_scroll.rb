class RemovedeparturesFromScroll < ActiveRecord::Migration[5.0]
  def change
  	remove_column :departures, :articulos_id, :integer
  	add_column :departures, :articulos, :string
  end
end
