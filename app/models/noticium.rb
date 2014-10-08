class Noticium < ActiveRecord::Base
	def self.search(search)
 		if search 
    		where('titulo LIKE ?', "%#{search}%")
  		else
    		scoped	
  		end
  	end
end
