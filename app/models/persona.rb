class Persona < ActiveRecord::Base
	has_many :adopcion

	def self.search(search)
 		if search 
    		where('ci LIKE ?', "%#{search}%")
  		else
    		scoped	
  		end
  	end

	validates :ci,
	uniqueness: {case_sensitive: false ,message: "ya esta registrado"}

end
