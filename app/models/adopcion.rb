class Adopcion < ActiveRecord::Base
	 belongs_to :persona
	 belongs_to :mascota
	 has_many :seguimientos


end
