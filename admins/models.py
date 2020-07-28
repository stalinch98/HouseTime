from django.db import models


class Contacto( models.Model ):
    id_contacto = models.AutoField( primary_key=True )
    nombre_usuario = models.CharField( max_length=100 )
    celular = models.IntegerField()
    email = models.CharField( max_length=100 )
    mensaje = models.CharField( max_length=800 )


class Blog( models.Model ):
    id_blog = models.AutoField( primary_key=True )
    nombre_usuario = models.CharField( max_length=100 )
    comentarios = models.CharField( max_length=800 )


class Empresa( models.Model ):
    mision = models.CharField( max_length=500 )
    vision = models.CharField( max_length=500 )
    descripcion_blog = models.CharField( max_length=500 )
    nombre_logo = models.CharField( max_length=50 )


class Cotizar( models.Model ):
    id_cotizar = models.AutoField( primary_key=True )
    nombre = models.CharField( max_length=50 )
    apellido = models.CharField( max_length=50 )
    cedula = models.IntegerField()
    opciones = models.CharField( max_length=500 )


class Imagen( models.Model ):
    id_imagen = models.AutoField( primary_key=True )
    nombre_imagen = models.CharField( max_length=50 )


class SubImagenes( models.Model ):
    id_sub_imagen = models.AutoField( primary_key=True )
    nombre_imagen = models.CharField( max_length=50 )
    id_imagen = models.ForeignKey( Imagen, models.DO_NOTHING, db_column='id_imagen' )


class Tipo( models.Model ):
    id_tipo = models.AutoField( primary_key=True )
    descripcion = models.CharField( max_length=50 )  # Field name made lowercase.


class Ubicacion( models.Model ):
    id_ubicacion = models.AutoField( primary_key=True )
    latitud = models.FloatField()
    longitud = models.FloatField()
    nombre_ubicacion = models.CharField( max_length=100 )


class Anuncios( models.Model ):
    id_anuncio = models.AutoField( primary_key=True )
    titulo = models.CharField( max_length=100 )
    descripcion = models.CharField( max_length=200 )
    ambientes = models.CharField( max_length=200 )
    cantidad_ambientes = models.CharField( max_length=20 )
    servicios = models.CharField( max_length=200 )
    max_personas = models.IntegerField()
    precio_dia = models.FloatField()
    reservado = models.IntegerField()
    id_imagen = models.ForeignKey( 'Imagen', models.DO_NOTHING, db_column='id_imagen' )
    id_ubicacion = models.ForeignKey( 'Ubicacion', models.DO_NOTHING, db_column='id_ubicacion' )
    id_tipo = models.ForeignKey( Tipo, models.DO_NOTHING, db_column='id_tipo' )


class Promocion( models.Model ):
    id_promocion = models.AutoField( primary_key=True )
    id_anuncio = models.ForeignKey( Anuncios, models.DO_NOTHING, db_column='id_anuncio' )
    estado = models.BooleanField()
    fecha_maxima = models.DateField()
    precio_oferta = models.FloatField()


class Reserva( models.Model ):
    id_reserva = models.AutoField( primary_key=True )
    id_anuncio = models.ForeignKey( Anuncios, models.DO_NOTHING, db_column='id_anuncio' )
    nombre = models.CharField( max_length=100 )
    cedula = models.IntegerField()
    telefono = models.IntegerField()
    n_adultos = models.IntegerField()
    n_ninos = models.IntegerField( blank=True, null=True )
    n_dias = models.IntegerField()
    precio_total = models.FloatField()
