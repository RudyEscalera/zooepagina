class Veterinarium < ActiveRecord::Base
	validates :nombre,
	          :presence  => { :message => ": es necesario un nombre" },
	          :length => {minimum:2, maximum:20 ,message:"tiene que ser mayor a 1 letra y menor a 20",:allow_blank => TRUE },
            format: { with: /\A[a-zA-Z]+\s/,message: "Solo se permiten Letras",:allow_blank => TRUE  }
  validates :direccion,
    	      :presence  => { :message => ": es necesario una direccion" },
            :length => {minimum:2, maximum:30 ,message:"tiene que ser mayor a 1 letra y menor a 30",:allow_blank => TRUE },
            format: { with: /\A[a-zA-Z0-9]+\s/,message: "No se permiten caracteres especiales",:allow_blank => TRUE }
  validates :telefono,
             numericality: { only_integer: true, greater_than_or_equal_to:0, message:"tiene que ser un numero y positivo",:allow_blank => TRUE }
  validates :movil,
             numericality: { only_integer: true, greater_than_or_equal_to:0, message:"tiene que ser un numero y positivo",:allow_blank => TRUE }
  validates :encargado,
            length: {minimum:2, maximum:30 ,message:"tiene que minimo 2 letras maximo 30"},
            format: { with: /\A[a-zA-Z]+\s/,message: "No se permiten caracteres especiales" },:allow_blank => TRUE 
  validates :descripcion,
            format: { with: /\A[a-zA-Z0-9]+\s/,message: "No se permiten caracteres especiales"},
            length: {minimum:2, maximum:50 ,message:"tiene que ser minimo 2 letras y maximo 50"},:allow_blank => TRUE 
end
