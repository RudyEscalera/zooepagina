class Adopcion < ActiveRecord::Base
	 belongs_to :persona
	 belongs_to :mascota
end
