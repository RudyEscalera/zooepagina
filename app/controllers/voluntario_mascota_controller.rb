class VoluntarioMascotaController < ApplicationController
  before_action :set_voluntario_mascotum, only: [:show, :edit, :update, :destroy]

  # GET /voluntario_mascota
  # GET /voluntario_mascota.json
  def index
    @voluntario_mascota = VoluntarioMascotum.all
  end

  # GET /voluntario_mascota/1
  # GET /voluntario_mascota/1.json
  def show
  end

  # GET /voluntario_mascota/new
  def new
    @voluntario_mascotum = VoluntarioMascotum.new
  end

  # GET /voluntario_mascota/1/edit
  def edit
  end

  def registrar
    @id_mascota = params[:id_mascota] 
    @id_voluntario = params[:id_voluntario]


    @voluntario_mascotum = VoluntarioMascotum.new
    
    @voluntario_mascotum.id_voluntario = @id_voluntario
    @voluntario_mascotum.id_mascota = @id_mascota
    @voluntario_mascotum.save

    

    redirect_to '/mascota'
    
    
  end

  # POST /voluntario_mascota
  # POST /voluntario_mascota.json
  def create
    @voluntario_mascotum = VoluntarioMascotum.new(voluntario_mascotum_params)

    respond_to do |format|
      if @voluntario_mascotum.save
        format.html { redirect_to @voluntario_mascotum, notice: 'Voluntario mascotum was successfully created.' }
        format.json { render :show, status: :created, location: @voluntario_mascotum }
      else
        format.html { render :new }
        format.json { render json: @voluntario_mascotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voluntario_mascota/1
  # PATCH/PUT /voluntario_mascota/1.json
  def update
    respond_to do |format|
      if @voluntario_mascotum.update(voluntario_mascotum_params)
        format.html { redirect_to @voluntario_mascotum, notice: 'Voluntario mascotum was successfully updated.' }
        format.json { render :show, status: :ok, location: @voluntario_mascotum }
      else
        format.html { render :edit }
        format.json { render json: @voluntario_mascotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voluntario_mascota/1
  # DELETE /voluntario_mascota/1.json
  def destroy
    @voluntario_mascotum.destroy
    respond_to do |format|
      format.html { redirect_to voluntario_mascota_url, notice: 'Voluntario mascotum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voluntario_mascotum
      @voluntario_mascotum = VoluntarioMascotum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voluntario_mascotum_params
      params.require(:voluntario_mascotum).permit(:id_voluntario, :id_mascota)
    end
end
