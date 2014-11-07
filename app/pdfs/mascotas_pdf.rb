require "prawn/table"

class MascotasPdf < Prawn::Document
  def initialize(mascotas)
    super(top_margin: 70)
    @mascotas = mascotas
    margen
    titulo
    datos
  end

  def margen
    canvas do
      fill_circle [bounds.left, bounds.top],  30
      fill_circle [bounds.right, bounds.top],  30
      fill_circle [bounds.right, bounds.bottom],  30
      fill_circle [0,0],  30
    end
  end

  def titulo

    fill_color"#8A8A8A"#color de las letras 
    text "REPORTE DE MASCOTAS", :size => 30, :align => :center
  end

  def datos
    
    move_down 10
    font("Courier",:size=>10)do
      text "Yeah, using Courier 10 courtesy of the font method."
    end

    font("Helvetica",:size=>12)
    text "Back to normal"

    move_down 20
    mascotainfo = [["NOMBRE","ESPECIE","RAZA","SEXO","EDAD-MESES","COLOR"]]
    table mascotainfo, 
    # :position => :center,
    :column_widths => [70,70,70,70,70,70,70]     



    @mascotas.each do |mascota|
      filas(mascota)
    end
  end

  def filas(mascota)
    move_down 5
    font("Courier",:size=>10)
    # font_size 10 #TAMANIO DE LAS LETRAS

    mascotainfo = [["#{ mascota.nombre }","#{ mascota.especie }","#{ mascota.raza }","#{mascota.sexo}","#{mascota.edad}","#{mascota.color}"]]

    table mascotainfo, 
    # :position => :center,
    :column_widths => [70,70,70,70,70,70] 
  end
end

