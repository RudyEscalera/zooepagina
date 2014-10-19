class Voluntario < ActiveRecord::Base
  
  validates :nombre,
            presence:{ message:": es necesario un nombre" },
            length:{minimum:2, maximum:20 ,message:"tiene que ser mayor a 1 letra y menor a 20",:allow_blank => TRUE},
            format:{ with: /\A[a-zA-Z]+\s/,message: "solo se permiten letras",:allow_blank => TRUE }
  validates :apellido_paterno,
            presence:{ message:": es necesario el apellido" },
            length:{minimum:2, maximum:20 ,message:"tiene que ser mayor a 1 letra y menor a 20",:allow_blank => TRUE},
            format:{ with: /\A[a-zA-Z]+\z/,message: "solo se permiten letras",:allow_blank => TRUE }
  validates :apellido_materno,
            presence:{ message:": es necesario el apellido" },
            length:{minimum:2, maximum:20 ,message:"tiene que ser mayor a 1 letra y menor a 20",:allow_blank => TRUE},
            format:{ with: /\A[a-zA-Z]+\z/,message: "solo se permiten letras",:allow_blank => TRUE }
  validates :ci,
            numericality: { only_integer: true, greater_than_or_equal_to:0, message:"tiene que ser un numero y positivo",:allow_blank => TRUE}
  validates :fecha_nacimiento,
            presence:{message:"es necesarrio fecha de nacimiento",:allow_blank => TRUE}
  validates :lugar_nacimiento,
            format:{ with:/\A[a-zA-Z0-9]+\s/,message: "No se permiten caracteres especiales" ,:allow_blank => TRUE}
  validates :edad,
            numericality: { only_integer: true, greater_than_or_equal_to:0, message:"tiene que ser un numero y positivo",:allow_blank => TRUE}
  validates :direccion,
            presence:{ message:": es necesario una direccion" },
            format:{ with:/\A[a-zA-Z0-9]+\s/,message: "No se permiten caracteres especiales",:allow_blank => TRUE }
  validates :telefono_fijo,
            numericality: { only_integer: true, greater_than_or_equal_to:0, message:"tiene que ser un numero y positivo",:allow_blank => TRUE}
  validates :telefono_movil,
            numericality: { only_integer: true, greater_than_or_equal_to:0, message:"tiene que ser un numero y positivo",:allow_blank => TRUE}
  validates :email,
	          format:{with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "no valido",:allow_blank => TRUE}
  validates :licensia_conducir,
            numericality: { only_integer: true, greater_than_or_equal_to:0, message:"tiene que ser un numero y positivo",:allow_blank => TRUE}
  validates :"formacion_academica",
            format:{ with: /\A[a-zA-Z]+\s/,message: "solo se permiten letras", :allow_blank => TRUE }
end
