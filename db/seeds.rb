# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# MASCOTAS
Mascotum.create(nombre:"boby", especie:"canino", raza:"criollo", sexo:"M", edad:2, color:"negro", estado:"adopcion", observacion:"Este animal fue encontrado")
Mascotum.create(nombre:"coki", especie:"canino", raza:"criollo", sexo:"M", edad:2, color:"cafe", estado:"recuperacion", observacion:"Este animal fue encontrado")
Mascotum.create(nombre:"rufus", especie:"gato", raza:"criollo", sexo:"M", edad:2, color:"negro", estado:"adopcion", observacion:"Este animal fue encontrado")

# PERSONAS
Persona.create(ci:"1111-CBBA", nombres:"Denys Denylson", apellido_paterno:"Hurtado", apellido_materno:"Coca")
Persona.create(ci:"2222-CBBA", nombres:"Pepito", apellido_paterno:"Perez", apellido_materno:"Perez")
Persona.create(ci:"3333-LP", nombres:"Fulanita", apellido_paterno:"Laime", apellido_materno:"Quiroz")


#Veterinarias
Veterinarium.create(nombre:"CRV", direccion: "Final Ramon Rivero", telefono: "4531132", movil: "72743200", encargado: "Mallucy Sansusty Irusta", activo: true, descripcion: "Consultorio Radiologico")
Veterinarium.create(nombre:"DIAGNOVET", direccion: "Rico Toro entre pando y Melchor Urquidi", telefono: "4290695", movil: "7520090", encargado: "Wilfredo Eularte Terceros", activo: true, descripcion: "Veterinario Zootecnista")
Veterinarium.create(nombre:"Mascotas", direccion: "Avenida Santa Cruz", telefono: "4886675", movil: "71771776", encargado: "", activo: true, descripcion: "")
Veterinarium.create(nombre:"Mis Mascotas", direccion: "Aniceto Arze y Papa Paulo", telefono: "4531716", movil: "70376454", encargado: "", activo: true, descripcion: "")
Veterinarium.create(nombre:"Veterinaria Can y Cat", direccion: "16 de Julio", telefono: "4526981", movil: "70740357", encargado: "", activo: true, descripcion: "")
Veterinarium.create(nombre:"Cesavet", direccion: "16 de Julio entre L. Cabrera y Calama ", telefono: "4661138", movil: "70769984", encargado: "Ericka Quiroga Lopez", activo: true, descripcion: "")
Veterinarium.create(nombre:"Narices Frias", direccion: "Av. Beijing a dos cuadras de Tadeo Haenke", telefono: "4412500", movil: "79985475", encargado: "Wanda Cartagena", activo: true, descripcion: "Expertos en peluqueria canina")
Veterinarium.create(nombre:"Dogtor Ami", direccion: "Av. Victor Ustariz casi av. Peru", telefono: "4448784", movil: "72279871", encargado: "Alena Reinaga", activo: true, descripcion: "")
Veterinarium.create(nombre:"OGGI", direccion: "Uruguay entre Antezan y 16 de Julio", telefono: "", movil: "60770083", encargado: "Mabel Veizaga Rios", activo: true, descripcion: "Veterinaria Zootecnista")
Veterinarium.create(nombre:"Serviviet", direccion: "Av. siles 4 cuadras antes del avion", telefono: "4599251", movil: "71787343", encargado: "Guerry Cordoba Ferrufino", activo: true, descripcion: "Diagnostico de displasia coxofemoral")
