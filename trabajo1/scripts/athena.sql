select * from trusted;  //Traer todos los registros
select * from trusted where city = 'Cali';  //Traer los registros de la ciudad de Cali
select count(*) from trusted where city = 'Bogotá';  //Contar los registros de la ciudad de Bogotá
select avg(averagetemperature) from trusted; //Promedio de temperaturas de todos los registros
select * from trusted order by "averagetemperature" desc; //Organizar de forma descendente por temperatura
select count(*) from trusted where averagetemperature > 31; //Contar los registros donde la temperatura es mayor que 31
select count(distinct city) from trusted;  //Contar las ciudades unicas de todos los registros
select count(distinct country) from trusted; //Contar los paises unicos de todos los registros
select count(*) from trusted where city = 'Bogotá' and averagetemperature < 19;  //Contar la cantidad de registro donde la ciudad es Bogotá y la temperatura es menor a 19
