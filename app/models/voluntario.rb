class Voluntario < ActiveRecord::Base
  
  validates :nombre,
            presence:{ message:": es necesario un nombre" },
            length:{minimum:2, maximum:20 ,message:"tiene que ser mayor a 1 letra y menor a 20",:allow_blank => TRUE}
            #format:{ with: /\A[a-zA-Z]+\z/, message: "solo se permiten letras",:allow_blank => TRUE }
  validates :apellido_paterno,
            presence:{ message:": es necesario el apellido" },
            length:{minimum:2, maximum:20 ,message:"tiene que ser mayor a 1 letra y menor a 20",:allow_blank => TRUE}
  validates :apellido_materno,
            presence:{ message:": es necesario el apellido" },
            length:{minimum:2, maximum:20 ,message:"tiene que ser mayor a 1 letra y menor a 20",:allow_blank => TRUE}
  validates :ci,
            uniqueness: {message: "el ci ya fue usado"},
            presence:{ message:": es necesario un CI" , :allow_blank => TRUE},
            numericality: { only_integer: true, greater_than_or_equal_to:0, message:"tiene que ser un numero y positivo",:allow_blank => TRUE}
  validates :fecha_nacimiento,
            presence:{message:"es necesarrio fecha de nacimiento",:allow_blank => TRUE}
  validates :edad,
            numericality: { only_integer: true, greater_than_or_equal_to:0, message:"tiene que ser un numero y positivo",:allow_blank => TRUE}
  validates :direccion,
            presence:{ message:": es necesario una direccion" },
            format:{ with:/\A[a-zA-Z0-9]+\s/,message: "No se permiten caracteres tambien que sean 2 calles minimo",:allow_blank => TRUE }
  validates :telefono_fijo,
            presence:{ message:": es necesario un telefono fijo" },
            numericality: { only_integer: true, greater_than_or_equal_to:0, message:"tiene que ser un numero y positivo",:allow_blank => TRUE}
  validates :telefono_movil,
            numericality: { only_integer: true, greater_than_or_equal_to:0, message:"tiene que ser un numero y positivo",:allow_blank => TRUE}
  validates :email,
	          format:{with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "no valido",:allow_blank => TRUE}
  validates :licensia_conducir,
            numericality: { only_integer: true, greater_than_or_equal_to:0, message:"tiene que ser un numero y positivo",:allow_blank => TRUE}
end
