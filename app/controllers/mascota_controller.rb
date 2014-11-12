class MascotaController < ApplicationController
  before_action :set_mascotum, only: [:show, :edit, :update, :destroy]

  # @nuevo = true

 
  
  # GET /mascota
  # GET /mascota.json
  def index
    @mascotas = Mascotum.all

    @palabra = ''
    @palabra = params[:palabra]
    @mascota = Mascotum.where("nombre LIKE '#{@palabra}%'")

    respond_to do |format|
      format.html
      format.pdf do
        pdf = MascotasPdf.new(@mascotas)
        send_data pdf.render, filename: "mascotas.pdf", type: "application/pdf", disposition: "inline"
      end
    end
  end


  def publico
    @mascotas = Mascotum.where(:estado=>"adopcion")
    # redirect_to '/'
  end

  # GET /mascota/1
  # GET /mascota/1.json
  def show
    @id_mascota = params[:id]
    @voluntarios = Voluntario.all
    @voluntarios_mascotas=VoluntarioMascotum.where(:id_mascota=>@id_mascota).last
  end

 

  # GET /mascota/new
  def new
    @mascotum = Mascotum.new
    #@voluntarios = VoluntarioTemporal.where( :activo => true)

  end

  # GET /mascota/1/edit
  def edit

  end

  # POST /mascota
  # POST /mascota.json
  def create
    @mascotum = Mascotum.new(mascotum_params)

    respond_to do |format|
      if @mascotum.save
        format.html { redirect_to @mascotum, notice: 'Mascota Registrada!!!' }
        format.json { render :show, status: :created, location: @mascotum }
      else
        format.html { render :new }
        format.json { render json: @mascotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mascota/1
  # PATCH/PUT /mascota/1.json
  def update
    respond_to do |format|
      if @mascotum.update(mascotum_params)
        format.html { redirect_to @mascotum, notice: 'Mascota Editada.' }
        format.json { render :show, status: :ok, location: @mascotum }
      else
        format.html { render :edit }
        format.json { render json: @mascotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mascota/1
  # DELETE /mascota/1.json
  def destroy
    @mascotum.destroy
    respond_to do |format|
      format.html { redirect_to mascota_url, notice: 'Mascota Eliminada.' }
      format.json { head :no_content }
    end
  end


  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mascotum
      @mascotum = Mascotum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mascotum_params
      params.require(:mascotum).permit(:nombre, :especie, :raza, :sexo, :edad, :color, :estado, :depar, :hexa, :octa, :anti, :esterilizacion, :observacion)
    end
end
