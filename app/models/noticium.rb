class Noticium < ActiveRecord::Base
	def self.search(search)
 		if search 
    		where('titulo LIKE ?', "%#{search}%")
  		else
    		scoped	
  		end
  	end

  	validates :titulo, 
	presence:{ message:": Introduzca un titulo" }, 
	length: { maximum: 10 }, 
	format:{ with: /\A[a-zA-Z]+\z/,message: "No use simbolos solo letras" }

	validates :contenido, 
	presence:{ message:": Introduzca un contenido" }
end
