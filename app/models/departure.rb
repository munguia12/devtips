class Departure < ApplicationRecord
before_validation :update_stock
		private
def update_stock
	 @productos = Producto.all

	existencia = piezas
		subtraction = (existencia -self.piezas)
			if self.piezas.nil?
				elsif subtraction < 0
					self.errors.add(:existencia ,"No hay suficientes productos para dar de baja, la cantidad actual es #{existencia }")
					elsif subtraction == existencia
				@productos.update(existencia: existencia  - self.piezas)
			else
		@productos.update(existencia: existencia  - self.piezas)
	end
end
	
 end
