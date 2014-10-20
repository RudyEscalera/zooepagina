class HogarTemporal < ActiveRecord::Base
	validates :ci, 
	presence:{ message:": Introduzca Su CI" }, 
	length: { maximum: 15 }

	validates :nombres, 
	presence:{ message:": Introduzca un nombre" }, 
	length: { maximum: 30 }

	validates :apellidos, 
	presence:{ message:": Introduzca sus apellidos" }, 
	length: { maximum: 30 }

	validates :direccion, 
	presence:{ message:": Introduzca su direccion" }, 
	length: { maximum: 50 }
end
