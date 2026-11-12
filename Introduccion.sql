create database if not exists nombre_base_datos;

create database centro_educativo; # comando para crea database.
show databases;  # comando para ver las bases de datos.

use centro_educativo; # comando para seleccionar DB

create table colegio( # comando para crear DB
	id_colegio int auto_increment primary key,
    nombre_colegio varchar(100) not null,
    direccion varchar(50) not null,
    telefono varchar(15) not null,
    correo varchar(50),
    cant_estudiante int not null
);

create table estudiantes(
	ind_estudiante int auto_increment primary key,
    id_colegio_estudiante int,
    nombre varchar(25) not null,
    apellido varchar(50) not null,
    cedula varchar(20) unique not null,
    fecha_nacimiento date,
    correo varchar(50),
    activo boolean default true,
    fecha_de_registro timestamp default current_timestamp
);

create table profesor(
	id_profesor int auto_increment primary key,
    nombre varchar(25) not null,
    apellido varchar(50) not null,
    telefono varchar(15) not null,
    especialidad varchar(50) not null,
    direccion varchar(50),
    fecha_nacimiento date,
    fecha_de_registro timestamp default current_timestamp
);


show tables; # mostrar las tablas disponibles.
describe estudiante; #mostrar todos los elementos de la tabla.

# comando para agregar un campo a la tabla
alter table estudiantes add tutor varchar(50);

# modicar el tipo de dato de un campo
alter table estudiantes modify nombre varchar(30);

# Eliminar un campo en especifico
alter table estudiantes drop column tutor;

# renombrar una tabla
rename table estudiantes to estudiante;

# renombrar un campo en espeficico
alter table estudiantes change celula cedula varchar(15) unique not null;

create table prueba (
	id int, 
    nombre varchar(10)
);

show tables;

# Eliminar una tabla por completo (se borran todos los registros)
drop table prueba;

# Eliminar una base de datos
create database cced;
use cced;
Drop database if exists direccion;

# Vaciar toda la informacion de una base de datos 
truncate table prueba;

use centro_educativo;
create table curso(
	id_curso int auto_increment primary key,
    nombre_curso varchar(50) not null,
    codigo_curso varchar(30) not null,
    profesor_asignado int,
    id_colegio int not null

) ;


create database tienda_pro;
use tienda_pro;

# primera table categoria()

create table categoria (
	id_categoria int auto_increment primary key,
    nombre_categoria varchar(50) not null unique,
    descripcion text
);

/*
segunda tabla cliente(id_cliente, nombre, apellido, correo
telefono, direccion, fecha_registro)
*/
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    telefono VARCHAR(15),
    direccion VARCHAR(150),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

/*
tabla de productos con id producto. nombre producto, precio, 
stock default 0, id categoria
*/

create table productos(
	id_producto int auto_increment primary key,
    nombre_producto varchar(100) not null,
    precio decimal(10,2) not null,
    stock int not null default 0,
    id_categoria_producto int,
    
    constraint fk_producto_categoria foreign key (id_categoria_producto) 
    references categoria(id_categoria)
    on delete set null on update cascade
);

CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado ENUM('Pendiente', 'Enviado', 'Entregado', 'Cancelado') 
    DEFAULT 'Pendiente',
    total DECIMAL(10,2) DEFAULT 0.00,
    id_cliente_pedidos INT NOT NULL,

	constraint fk_pedidos_clientes foreign key (id_cliente_pedidos)
    references clientes(id_cliente)
    on delete cascade on update cascade
    );








