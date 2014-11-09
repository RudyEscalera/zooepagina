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
    fecha = Time.now

    move_down 10
    font("Courier",:size=>10)do
      text "ZOOE CBBA-Bolivia\nFecha: #{fecha.day}/#{fecha.month}/#{fecha.year}", :align => :right

      text "\n\nDocumento de reporte de mascotas perteneciente a la organizacion ZOOE. Encargada de rescate y concientizacion de mascotas."
    end

    font("Helvetica",:size=>12)
    text "\nMASCOTAS"

    move_down 20
    mascotainfo = [["N#","I.D","NOMBRE","ESPECIE","RAZA","SEXO","EDAD-MESES","COLOR"]]
    table mascotainfo, 
    # :position => :center,
    :column_widths => [30,30,70,70,70,70,70,70,70]     


    contador = 1
    @mascotas.each do |mascota|
      filas(mascota,contador)
      contador += 1
    end
  end

  def filas(mascota,contador)
    move_down 3
    font("Courier",:size=>10)
    # font_size 10 #TAMANIO DE LAS LETRAS

    mascotainfo = [["#{contador}","#{mascota.id}","#{ mascota.nombre }","#{ mascota.especie }","#{ mascota.raza }","#{mascota.sexo}","#{mascota.edad}","#{mascota.color}"]]

    table mascotainfo, 
    # :position => :center,
    :column_widths => [30,30,70,70,70,70,70,70] 
  end
end

