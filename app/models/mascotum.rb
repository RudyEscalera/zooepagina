class Mascotum < ActiveRecord::Base
	#attr_accessible :nombre, :nombre, :especie, :raza, :sexo, :edad, :color, :estado, :despar, :hexa, :octa, :anti, :esterilizacion, :observacion

	# validando campos y poniendo un limite en el tamanio de los campos
	validates :nombre, presence:true, length: { maximum: 5 }
	# validando formato
end
