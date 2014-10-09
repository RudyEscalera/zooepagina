class Mascotum < ActiveRecord::Base
	#attr_accessible :nombre, :nombre, :especie, :raza, :sexo, :edad, :color, :estado, :despar, :hexa, :octa, :anti, :esterilizacion, :observacion

	# validando campos y poniendo un limite en el tamanio de los campos
	validates :nombre, 
	presence:{ message:": Introduzca un nombre" }, 
	length: { maximum: 10 }, 
	format:{ with: /\A[a-zA-Z]+\z/,message: "No use simbolos solo letras" }
	# validando formato
	validates :raza, 
	presence:{ message:": Introduzca la raza del animal" }, 
	length: { maximum: 10 }, 
	format:{ with: /\A[a-zA-Z]+\z/,message: "No use simbolos solo letras" }

	validates :color, 
	presence:{ message:": Introduzca un color" }, 
	length: { maximum: 10 }, 
	format:{ with: /\A[a-zA-Z]+\z/,message: "No use simbolos solo letras" }

	validates :edad,
    numericality: { only_integer: true, greater_than_or_equal_to:0, message:"Registre solo numero > 0"}
	
	validates :depar,
	format:{ with: /\A[a-zA-Z]+\z/,message: "No use simbolos solo letras" },
	length: { maximum: 2 } 

	validates :hexa,
	format:{ with: /\A[a-zA-Z]+\z/,message: "No use simbolos solo letras" },
	length: { maximum: 2 } 

	validates :octa,
	format:{ with: /\A[a-zA-Z]+\z/,message: "No use simbolos solo letras" },
	length: { maximum: 2 } 

	validates :anti,
	format:{ with: /\A[a-zA-Z]+\z/,message: "No use simbolos solo letras" },
	length: { maximum: 2 } 

	validates :esterilizacion,
	format:{ with: /\A[a-zA-Z]+\z/,message: "No use simbolos solo letras" },
	length: { maximum: 2 } 

	# validates :nombre,
	# uniqueness: {case_sensitive: false ,message: "ya esta registrado"}

    


end
