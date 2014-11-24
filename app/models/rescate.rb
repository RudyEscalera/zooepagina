class Rescate < ActiveRecord::Base
  has_many :segrescates
  validates :direccion_rescate,
            presence:{ message:": es necesario una direccion" },
            length:{minimum:2, maximum:30 ,message:"tiene que ser mayor a 1 letra y menor a 30",:allow_blank => TRUE},
            format:{ with: /\A[a-zA-Z0-9]+\s/, message: "No se permiten caracteres especiales",:allow_blank => TRUE}
  validates :observacion,
            length:{minimum:2, maximum:60 ,message:"tiene que ser mayor a 1 letra y menor a 30", :allow_blank => TRUE},
            format:{ with: /\A[a-zA-Z0-9]+\s/, message: "solo se permiten letras", :allow_blank => TRUE}
  validates :fecha,
            presence:{ message:": es necesario una fecha" }
  validates :voluntario,
            presence:{ message:": es necesario un voluntario"}    
end
