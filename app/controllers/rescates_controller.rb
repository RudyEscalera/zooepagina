class RescatesController < ApplicationController
  before_action :set_rescate, only: [:show, :edit, :update, :destroy]
  before_filter :actualizar_nombre
  # GET /rescates
  # GET /rescates.json
  def index
    @palabra = ''
    @palabra = params[:palabra]
    @rescates= Rescate.where("direccion_rescate LIKE '#{@palabra}%'").order("fecha DESC")
  end

  # GET /rescates/1
  # GET /rescates/1.json
  def show
    @voluntario = Voluntario.find(@rescate.voluntario).nombre
  end

  # GET /rescates/new
  def new
    @rescate = Rescate.new
    @voluntarios_array = Voluntario.where( estado: "true").pluck(:nombre, :id)
  end

  # GET /rescates/1/edit
  def edit
    @voluntarios_array = Voluntario.where( estado: "true").pluck(:nombre, :id)
  end

  # POST /rescates
  # POST /rescates.json
  def create
    @rescate = Rescate.new(rescate_params)
    respond_to do |format|
      if @rescate.save
        format.html { redirect_to @rescate, notice: 'Rescate creado correctamente' }
        format.json { render :show, status: :created, location: @rescate }
      else
        format.html { render :new }
        format.json { render json: @rescate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rescates/1
  # PATCH/PUT /rescates/1.json
  def update
    respond_to do |format|
      if @rescate.update(rescate_params)
        format.html { redirect_to @rescate, notice: 'Rescate se actualizo' }
        format.json { render :show, status: :ok, location: @rescate }
      else
        format.html { render :edit }
        format.json { render json: @rescate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rescates/1
  # DELETE /rescates/1.json
  def destroy
    @rescate.destroy
    respond_to do |format|
      format.html { redirect_to rescates_url, notice: 'Rescate fue eleminado' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rescate
      @rescate = Rescate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rescate_params
      params.require(:rescate).permit(:direccion_rescate, :observacion, :fecha, :voluntario, :segrescates)
    end
    def actualizar_nombre
      if(params[:voluntario] != nil)
        @rescate.voluntario= Voluntario.find(params[:voluntario])
      end
    end
end
