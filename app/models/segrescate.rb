class Segrescate < ActiveRecord::Base
	belongs_to :rescate
	validates :body,  presence: true
end
