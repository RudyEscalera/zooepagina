class VoluntarioTemporalsController < ApplicationController
  before_action :set_voluntario_temporal, only: [:show, :edit, :update, :destroy]

  # GET /voluntario_temporals
  # GET /voluntario_temporals.json
  def index
    @voluntario_temporals = VoluntarioTemporal.all
  end

  # GET /voluntario_temporals/1
  # GET /voluntario_temporals/1.json
  def show
  end

  # GET /voluntario_temporals/new
  def new
    @voluntario_temporal = VoluntarioTemporal.new
  end

  # GET /voluntario_temporals/1/edit
  def edit
  end

  # POST /voluntario_temporals
  # POST /voluntario_temporals.json
  def create
    @voluntario_temporal = VoluntarioTemporal.new(voluntario_temporal_params)

    respond_to do |format|
      if @voluntario_temporal.save
        format.html { redirect_to @voluntario_temporal, notice: 'Voluntario creado correctamente.' }
        format.json { render :show, status: :created, location: @voluntario_temporal }
      else
        format.html { render :new }
        format.json { render json: @voluntario_temporal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voluntario_temporals/1
  # PATCH/PUT /voluntario_temporals/1.json
  def update
    respond_to do |format|
      if @voluntario_temporal.update(voluntario_temporal_params)
        format.html { redirect_to @voluntario_temporal, notice: 'Voluntario modificado.' }
        format.json { render :show, status: :ok, location: @voluntario_temporal }
      else
        format.html { render :edit }
        format.json { render json: @voluntario_temporal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voluntario_temporals/1
  # DELETE /voluntario_temporals/1.json
  def destroy
    @voluntario_temporal.destroy
    respond_to do |format|
      format.html { redirect_to voluntario_temporals_url, notice: 'Voluntario fue eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voluntario_temporal
      @voluntario_temporal = VoluntarioTemporal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voluntario_temporal_params
      params.require(:voluntario_temporal).permit(:nombre, :correo, :telefono, :ocupacion, :genero, :activo)
    end
end
