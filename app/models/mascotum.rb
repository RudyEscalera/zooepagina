class Mascotum < ActiveRecord::Base
	belongs_to :adopcion

	has_attached_file :photo
	#attr_accessible :nombre, :nombre, :especie, :raza, :sexo, :edad, :color, :estado, :despar, :hexa, :octa, :anti, :esterilizacion, :observacion

	# validando campos y poniendo un limite en el tamanio de los campos
	validates :nombre, 
	presence:{ message:": Introduzca un nombre" }, 
	length: { maximum: 10 }
	# validando formato
	validates :raza, 
	presence:{ message:": Introduzca la raza del animal" }, 
	length: { maximum: 10 }

	validates :color, 
	presence:{ message:": Introduzca un color" }, 
	length: { maximum: 10 }

	validates :edad,
    numericality: { only_integer: true, greater_than_or_equal_to:0, message:"Registre solo numero > 0"}
	


	# validates :depar,
	# format:{ with: /\A[a-zA-Z]+\z/,message: "No use simbolos solo letras" },
	# length: { maximum: 2 } 

	# validates :hexa,
	# format:{ with: /\A[a-zA-Z]+\z/,message: "No use simbolos solo letras" },
	# length: { maximum: 2 } 

	# validates :octa,
	# format:{ with: /\A[a-zA-Z]+\z/,message: "No use simbolos solo letras" },
	# length: { maximum: 2 } 

	# validates :anti,
	# format:{ with: /\A[a-zA-Z]+\z/,message: "No use simbolos solo letras" },
	# length: { maximum: 2 } 

	# validates :esterilizacion,
	# format:{ with: /\A[a-zA-Z]+\z/,message: "No use simbolos solo letras" },
	# length: { maximum: 2 } 

	# has_attached_file :image, styles: { medium: '200x200>', thumb: '48x48>' }

	# has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/mascota.png"

	# validates :nombre,
	# uniqueness: {case_sensitive: false ,message: "ya esta registrado"}


	# def imagen=(file_data)	
	# 	unless file_data.blank?
	# 		@file_data = file_data
	# 		self.extension = 
	# 	end
	# end
    

	# private
	# def guardar_imagen
	# 	if @file_data
	# 		FileUtils.mkdir_p FOTOS
	# 		File.open(photo_filename, 'wb') do |f|
	# 			f.write(@file_data.read)
	# 		end
	# 		@file_data = nil
	# 	end
	# end
    


end
