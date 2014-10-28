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
