class SeguimientosController < ApplicationController
  before_action :set_seguimiento, only: [:show, :edit, :update, :destroy]

  def create
    @adopcion = Adopcion.find(params[:adopcion_id])
    @seguimiento = @adopcion.seguimientos.create(seguimiento_params)
    redirect_to adopcion_path(@adopcion)
  end

  # GET /seguimientos
  # GET /seguimientos.json
  def index
    @seguimientos = Seguimiento.all
  end

  # GET /seguimientos/1
  # GET /seguimientos/1.json
  def show
  end

  # GET /seguimientos/new
  def new
    @id_adopcion = params[:id]
    @seguimiento = Seguimiento.new
  end

  # GET /seguimientos/1/edit
  def edit
  end

  # POST /seguimientos
  # POST /seguimientos.json
  def registrar_seguimiento
    @id_adopcion = params[:id_adopcion]
    @observacion = params[:observacion]

    @seguimiento = Seguimiento.new
    @seguimiento.id_adopcion = @id_adopcion
    @seguimiento.observacion = @observacion
    @seguimiento.save
    redirect_to '/'

  end


  # PATCH/PUT /seguimientos/1
  # PATCH/PUT /seguimientos/1.json
  def update
    respond_to do |format|
      if @seguimiento.update(seguimiento_params)
        format.html { redirect_to '/adopcions', notice: 'Seguimiento Editado.' }
        format.json { render :show, status: :ok, location: @seguimiento }
      else
        format.html { render :edit }
        format.json { render json: @seguimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seguimientos/1
  # DELETE /seguimientos/1.json
  def destroy
    @seguimiento.destroy
    respond_to do |format|
      format.html { redirect_to '/adopcions', notice: 'Seguimiento Eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seguimiento
      @seguimiento = Seguimiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seguimiento_params
      params.require(:seguimiento).permit(:id_adopcion, :observacion)
    end
end
