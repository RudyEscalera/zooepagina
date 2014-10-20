class WelcomeController < ApplicationController
  def index
  	@voluntarios_array = Voluntario.where( estado: "true").pluck(:nombre, :id)
  end
end
