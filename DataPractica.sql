use tienda;
/*Lista el nombre de todos los productos que hay en la tabla producto.*/
select nombre from producto;
/*Lista los nombres y los precios de todos los productos de la tabla producto.*/
select nombre, precio from producto;
/*Lista todas las columnas de la tabla producto.*/
select * from producto;
/*Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).*/
select nombre, precio, round(precio * 1.11) as precio_dolares from producto;
/*Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.*/
select nombre as "Nombre de Producto"
, precio as "Euros"
, round(precio * 1.11) as "Dolares"
 from producto;
 /*Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula*/
select upper(nombre),precio from producto;
/*Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.*/
select lower(nombre),precio from producto;
/*Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.*/
select upper(left(nombre, 2)) from fabricante;
/*Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.*/
select nombre, round(precio) from producto;
/*Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.*/
select nombre, round(precio) from producto;
/*Lista el código de los fabricantes que tienen productos en la tabla producto.*/
select codigo_fabricante from producto;
/*Lista el código de los fabricantes que tienen productos en la tabla producto, eliminando los códigos que aparecen repetidos.*/
select distinct codigo_fabricante from producto;
/*Lista los nombres de los fabricantes ordenados de forma ascendente.*/
select nombre from fabricante
order by nombre asc;
/*Lista los nombres de los fabricantes ordenados de forma descendente.*/
select nombre from fabricante
order by nombre desc;
/*Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.*/
select *
from producto 
join (fabricante)
on codigo_fabricante = codigo_fabricante
;
/* Devuelve una lista con las 5 primeras filas de la tabla fabricante.*/
select * from fabricante order by codigo limit 5 ;
/* Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.*/
select * from fabricante order by codigo asc limit 3,6;
/* Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT*/
select nombre, precio from producto order by precio limit 100;
/* Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT)*/
select nombre, precio from producto order by precio desc limit 100;
/* Lista el nombre de todos los productos del fabricante cuyo código de fabricante es igual a 2.*/
select codigo_fabricante, nombre from producto where codigo_fabricante = 2;
/* Lista el nombre de los productos que tienen un precio menor o igual a 120€.*/
select nombre, precio
from producto
where precio<=120;
/*Lista el nombre de los productos que tienen un precio mayor o igual a 400€.*/
select nombre, precio
from producto
where precio>=400;
/* Lista el nombre de los productos que no tienen un precio mayor o igual a 400€.*/
select nombre, precio
from producto
where precio<400;
/* Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador BETWEEN*/
select nombre, precio
from producto
where precio>80 and precio<300;
/* Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador BETWEEN.*/
select nombre, precio
from producto
where precio between 60 and 200;
/* Lista todos los productos que tengan un precio mayor que 200€ y que el código de fabricante sea igual a 6.*/
select codigo_fabricante, nombre, precio
from producto
where codigo_fabricante = 2 and precio > 200;
/* Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Sin utilizar el operador IN.*/
select * from producto
where codigo % 2 != 0
order by codigo limit 0,3;
 /* Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100 el valor del precio). Cree un alias para la columna que contiene el precio que se llame céntimos.*/
 select nombre, precio*100 as centimos 
 from producto;