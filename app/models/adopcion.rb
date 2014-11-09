class Adopcion < ActiveRecord::Base
	 belongs_to :persona
	 belongs_to :mascota
	 has_many :seguimientos

	validates :id_mascota,
	uniqueness: {case_sensitive: false ,message: "mascota ya adoptada"}
end
