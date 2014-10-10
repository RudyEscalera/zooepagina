class Persona < ActiveRecord::Base
	validates :ci,
	uniqueness: {case_sensitive: false ,message: "ya esta registrado"}

end
