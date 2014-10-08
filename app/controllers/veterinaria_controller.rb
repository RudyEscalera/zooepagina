class VeterinariaController < ApplicationController
   attr_accessor :direccion, :telefono, :movil, :encargado, :activo
  before_action :set_veterinarium, only: [:show, :edit, :update, :destroy]

  
  
  # GET /veterinaria
  # GET /veterinaria.json
  def index
    @veterinaria = Veterinarium.all
  end

  # GET /veterinaria/1
  # GET /veterinaria/1.json
  def show
  end

  # GET /veterinaria/new
  def new
    @veterinarium = Veterinarium.new
  end

  # GET /veterinaria/1/edit
  def edit
  end

  # POST /veterinaria
  # POST /veterinaria.json
  def create
    @veterinarium = Veterinarium.new(veterinarium_params)

    respond_to do |format|
      if @veterinarium.save
        format.html { redirect_to @veterinarium, notice: 'La veterinaria fue creada' }
        format.json { render :show, status: :created, location: @veterinarium }
      else
        format.html { render :new }
        format.json { render json: @veterinarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /veterinaria/1
  # PATCH/PUT /veterinaria/1.json
  def update
    respond_to do |format|
      if @veterinarium.update(veterinarium_params)
        format.html { redirect_to @veterinarium, notice: 'La veterinaria fue modificada' }
        format.json { render :show, status: :ok, location: @veterinarium }
      else
        format.html { render :edit }
        format.json { render json: @veterinarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /veterinaria/1
  # DELETE /veterinaria/1.json
  def destroy
    @veterinarium.destroy
    respond_to do |format|
      format.html { redirect_to veterinaria_url, notice: 'La veterinaria fue eliminada' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_veterinarium
      @veterinarium = Veterinarium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def veterinarium_params
      params.require(:veterinarium).permit(:nombre, :direccion, :telefono, :movil, :encargado, :activo, :descripcion)
    end
end
