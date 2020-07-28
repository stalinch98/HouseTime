# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Anuncios(models.Model):
    id_anuncio = models.IntegerField(primary_key=True)
    titulo = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=200)
    ambientes = models.CharField(max_length=200)
    servicios = models.CharField(max_length=200)
    max_personas = models.IntegerField()
    precio_dia = models.FloatField()
    reservado = models.IntegerField()
    id_imagen = models.ForeignKey('Imagen', models.DO_NOTHING, db_column='id_imagen')
    id_ubicacion = models.ForeignKey('Ubicacion', models.DO_NOTHING, db_column='id_ubicacion')
    cantidad_ambientes = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'anuncios'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Comentarios(models.Model):
    id_comentarios = models.IntegerField(primary_key=True)
    nombre_usuario = models.CharField(max_length=20)
    comentarios = models.CharField(max_length=80)

    class Meta:
        managed = False
        db_table = 'comentarios'


class Cotizar(models.Model):
    id_cotizar = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=50)
    apellido = models.CharField(max_length=50)
    cedula = models.IntegerField()
    opciones = models.CharField(max_length=500)

    class Meta:
        managed = False
        db_table = 'cotizar'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Empresa(models.Model):
    mision = models.TextField()
    vision = models.TextField()
    nombre_logo = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'empresa'


class Imagen(models.Model):
    id_imagen = models.IntegerField(primary_key=True)
    nombre_imagen = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'imagen'


class Promocion(models.Model):
    id_promocion = models.IntegerField(primary_key=True)
    id_anuncio = models.ForeignKey(Anuncios, models.DO_NOTHING, db_column='id_anuncio')
    estado = models.IntegerField()
    fecha_maxima = models.DateField()
    precio_oferta = models.FloatField()

    class Meta:
        managed = False
        db_table = 'promocion'


class Reserva(models.Model):
    id_reserva = models.IntegerField(primary_key=True)
    id_anuncio = models.ForeignKey(Anuncios, models.DO_NOTHING, db_column='id_anuncio')
    nombre = models.CharField(max_length=100)
    cedula = models.IntegerField()
    telefono = models.IntegerField()
    n_adultos = models.IntegerField()
    n_ninos = models.IntegerField(blank=True, null=True)
    n_dias = models.IntegerField()
    precio_total = models.FloatField()

    class Meta:
        managed = False
        db_table = 'reserva'


class SubImagenes(models.Model):
    id_sub_imagen = models.IntegerField(primary_key=True)
    nombre_imagen = models.CharField(max_length=50)
    id_imagen = models.ForeignKey(Imagen, models.DO_NOTHING, db_column='id_imagen')

    class Meta:
        managed = False
        db_table = 'sub_imagenes'


class Tipo(models.Model):
    id_tipo = models.IntegerField(primary_key=True)
    descripcion = models.CharField(db_column='Descripcion', max_length=50)  # Field name made lowercase.
    id_anuncio = models.ForeignKey(Anuncios, models.DO_NOTHING, db_column='id_anuncio')

    class Meta:
        managed = False
        db_table = 'tipo'


class Ubicacion(models.Model):
    id_ubicacion = models.IntegerField(primary_key=True)
    latitud = models.FloatField()
    longitud = models.FloatField()
    nombre_ubicacion = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'ubicacion'
