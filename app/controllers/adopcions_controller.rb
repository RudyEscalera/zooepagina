class AdopcionsController < ApplicationController
  before_action :set_adopcion, only: [:show, :edit, :update, :destroy]

  # GET /adopcions
  # GET /adopcions.json
  def index
    @adopcions = Adopcion.all
  end

  # GET /adopcions/1
  # GET /adopcions/1.json
  def show
  end

  # GET /adopcions/new
  def new
    @persona_id = params[:id]
    @adopcion = Adopcion.new

  end

  # GET /adopcions/1/edit
  def edit
  end

  # POST /adopcions
  # POST /adopcions.json
  def create
    @adopcion = Adopcion.new(adopcion_params)

    respond_to do |format|
      if @adopcion.save
        format.html { redirect_to @adopcion, notice: 'Adopcion Registrada.' }
        format.json { render :show, status: :created, location: @adopcion }
      else
        format.html { render :new }
        format.json { render json: @adopcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adopcions/1
  # PATCH/PUT /adopcions/1.json
  def update
    respond_to do |format|
      if @adopcion.update(adopcion_params)
        format.html { redirect_to @adopcion, notice: 'Adopcion Editada.' }
        format.json { render :show, status: :ok, location: @adopcion }
      else
        format.html { render :edit }
        format.json { render json: @adopcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adopcions/1
  # DELETE /adopcions/1.json
  def destroy
    @adopcion.destroy
    respond_to do |format|
      format.html { redirect_to adopcions_url, notice: 'Adopcion Eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adopcion
      @adopcion = Adopcion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adopcion_params
      params.require(:adopcion).permit(:numero_adultos, :numero_ninios, :numero_perros, :numero_gatos, :numero_otros, :referencia_casa, :numero_referencia1, :numero_referencia2, :id_persona, :id_mascota)
    end
end
