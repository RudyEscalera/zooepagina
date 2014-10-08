class HogarTemporalsController < ApplicationController
  before_action :set_hogar_temporal, only: [:show, :edit, :update, :destroy]

  # GET /hogar_temporals
  # GET /hogar_temporals.json
  def index
    @hogar_temporals = HogarTemporal.all
  end

  # GET /hogar_temporals/1
  # GET /hogar_temporals/1.json
  def show
  end

  # GET /hogar_temporals/new
  def new
    @hogar_temporal = HogarTemporal.new
  end

  # GET /hogar_temporals/1/edit
  def edit
  end

  # POST /hogar_temporals
  # POST /hogar_temporals.json
  def create
    @hogar_temporal = HogarTemporal.new(hogar_temporal_params)

    respond_to do |format|
      if @hogar_temporal.save
        format.html { redirect_to @hogar_temporal, notice: 'Hogar temporal was successfully created.' }
        format.json { render :show, status: :created, location: @hogar_temporal }
      else
        format.html { render :new }
        format.json { render json: @hogar_temporal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hogar_temporals/1
  # PATCH/PUT /hogar_temporals/1.json
  def update
    respond_to do |format|
      if @hogar_temporal.update(hogar_temporal_params)
        format.html { redirect_to @hogar_temporal, notice: 'Hogar temporal was successfully updated.' }
        format.json { render :show, status: :ok, location: @hogar_temporal }
      else
        format.html { render :edit }
        format.json { render json: @hogar_temporal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hogar_temporals/1
  # DELETE /hogar_temporals/1.json
  def destroy
    @hogar_temporal.destroy
    respond_to do |format|
      format.html { redirect_to hogar_temporals_url, notice: 'Hogar temporal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hogar_temporal
      @hogar_temporal = HogarTemporal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hogar_temporal_params
      params.require(:hogar_temporal).permit(:ci, :nombres, :apellidos, :telefono_fijo, :direccion, :numero)
    end
end
