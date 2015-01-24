class ArchivosController < ApplicationController
	def new
		@archivo = Archivo.new
	end
	def create
		if (!params[:archivo][:file].nil?)
			params[:archivo][:file].each do |arch|
				# @archivo = Archivo.new( file: = arch )
				# //@archivo.file = arch
				# @archivo.save
			end
		end
		redirect_to 'archivos/new'
	end
	def show
		@archivos = Archivo.all
	end
end
