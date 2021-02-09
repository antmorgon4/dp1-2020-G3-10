-- One admin user, named admin1 with passwor 4dm1n and authority admin
INSERT INTO users(username,password,enabled) VALUES ('admin1','4dm1n',TRUE);
INSERT INTO authorities(id,version,username,authority) VALUES (1,0,'admin1','admin');
-- One owner user, named owner1 with passwor 0wn3r
INSERT INTO users(username,password,enabled) VALUES ('owner1','0wn3r',TRUE);
INSERT INTO authorities(id,version,username,authority) VALUES (2,0,'owner1','owner');
-- One vet user, named vet1 with passwor v3t
INSERT INTO users(username,password,enabled) VALUES ('vet1','v3t',TRUE);
INSERT INTO authorities(id,version,username,authority) VALUES (3,0,'vet1','veterinarian');
-- One owner user, named owner1 with passwor Carles
INSERT INTO users(username,password,enabled) VALUES ('guipavvar','Carles',TRUE);
INSERT INTO authorities(id,version,username,authority) VALUES (8,0,'guipavvar','vendedor');
-- Owner ivacarmen
INSERT INTO users(username,password,enabled) VALUES ('ivacarmen','ivacarmen',TRUE);
INSERT INTO authorities(id,version,username,authority) VALUES (4,0,'ivacarmen','cliente');
--Owner luibelzan
INSERT INTO users(username,password,enabled) VALUES ('luibelzan','luibelzan',TRUE);
INSERT INTO authorities(id,version,username,authority) VALUES (5,0,'luibelzan','cliente');
--Owner luibelzan
INSERT INTO users(username,password,enabled) VALUES ('marta','marta',TRUE);
INSERT INTO authorities(id,version,username,authority) VALUES (6,0,'marta','cliente');
-- antmorgon4
INSERT INTO users(username,password,enabled) VALUES ('antmorgon4','password',TRUE);
INSERT INTO authorities(id,version,username,authority) VALUES (20,0,'antmorgon4','cliente');

--Cliente de pruebas

INSERT INTO users(username,password,enabled) VALUES ('clientepruebas','password',TRUE);
INSERT INTO authorities(id,version,username,authority) VALUES (200,0,'clientepruebas','cliente');

INSERT INTO users(username,password,enabled) VALUES ('vendedor1','vendedor1',TRUE);
INSERT INTO authorities(id,version,username,authority) VALUES (111,0,'vendedor1','vendedor');

---------------------------------------------------------------------------------------------------------------------------

--CLIENTES

INSERT INTO CLIENTES VALUES (1,0, 'Díaz','15224795Z','emailemail@email.com','1998-01-01','Marta','656522543',200000.0,'Sevilla','41000','Calle Prueba Numero 12 1E ','4538328114264664','marta');
INSERT INTO CLIENTES VALUES (20,0, 'Moreno González','32097886Y','antmorgon4@alum.us.es','1997-05-16','Antonio Javier', '601326967', 200.0, 'Sevilla', '41012', 'Calle Tarfia 45, 10', '4484241682520405', 'antmorgon4');
INSERT INTO CLIENTES VALUES (4,0, 'Cárdenas Meneses', '12345678X', 'ivancarmen@alum.us.es', '1998-10-10', 'Iván','123456789',5000.0,'Sevilla','41980','Calle Hernandez','0000-1111-2222-6666','ivacarmen');
INSERT INTO CLIENTES VALUES (200,0, 'Apellidos Prueba','15224795Z','correoprueba@alum.us.es','1990-01-01','Nombre Prueba', '600102030', 5000.0, 'Sevilla', '41013', 'Calle Pruebas 45, 10', '4538328114264664', 'clientepruebas');

--VENDEDORES

INSERT INTO vendedor(id,version,apellidos,dni,email,fecha_nacimiento,nombre,telefono,nombre_tienda,direccion_tienda,valoracion,votos,vacaciones,username) VALUES (8,0,'carles','4897312x','carles@gmail.com','2013-01-01','Africa','601326967','TiendaCarles','Calle del Olmo',500,125,true,'guipavvar');


--PEDIDOS

INSERT INTO pedido(id,version, estado, precio_total, fecha, direccion_envio) VALUES (100,0,'PENDIENTE',20,'2013-01-01','carles company');
INSERT INTO pedido(id,version, estado, precio_total, fecha, direccion_envio, cliente_id) VALUES (200,0,'PENDIENTE',40.0,'2018-01-01','Direccion Prueba', 1);
INSERT INTO pedido(id, version,estado, precio_total, fecha, direccion_envio) VALUES (300,0,'ENVIADO',40.0,'2019-01-01','Direccion Prueba Numero 2');

-- PELICULAS

INSERT INTO peliculas VALUES(1,0, 'El hundimiento del barco, según el creador de "Downton Abbey". "Titanic" es una extraordinaria narración de este viaje condenado al fracaso, hábilmente tejido con parcelas de acción, misterio.', '2013-01-01','https://static.filmin.es/images/media/684/3/poster_0_3_256x0.webp','Titanic', 12, 2012,'Julian Fellowes',3,1, 'BLURAY');
INSERT INTO peliculas VALUES(2,0, 'Luc Besson da la vuelta a la épica espacial con esta película inspirada en ‘Valérian et Laureline’ la serie de cómics que influyó enormemente en la estética de la "Star Wars" original.', '2013-01-01', 'https://static.filmin.es/images/media/20818/1/poster_0_3_720x0.webp', 'Valerian y la ciudad de los mil planetas', 12,2017,'Luc Besson',2,1, 'BLURAY' );
INSERT INTO peliculas VALUES(3,0, 'Adaptación cinematográfica de la enigmática novela de Agatha Christie. Protagonizada por la ganadora de dos Globos de Oro, Glenn Close y la detective del fenómeno televisivo “Expediente X” Gillian Anderson.', '2013-01-01', 'https://static.filmin.es/images/media/23729/2/poster_0_3_720x0.webp','La casa torcida', 12,2017,'Gilles Paquet-Brenner',5,1, 'BLURAY' );
INSERT INTO peliculas VALUES(4,0, 'Ganadora del Premio del Público Joven de los Premios EFA, una historia vitalista y con carisma sobre una joven luchadora de kickboxing.', '2013-01-01', 'https://static.filmin.es/images/media/31442/1/poster_0_3_720x0.webp', 'Fight Girl', 12,2018,'Johan Timmers',5,1, 'BLURAY');
INSERT INTO peliculas VALUES(6,0, 'La cara más absurda y delirante del sueño americano, ahora convertido en una pesadilla altamente estilizada que nos llevará por los caminos del humor absurdo y surrealista de David Lynch, el sadismo de Todd Solondz y el desfase estético de John Waters.', '2013-01-01', 'https://static.filmin.es/images/media/14128/3/poster_0_3_550x0.png', 'Remember', 14.75,2013,'Dawn Luebbe',1,1, 'DVD');
INSERT INTO peliculas VALUES(7,0, 'La comedia francesa más taquillera del año es la historia real de un grupo de trabajadores sociales que, ante el cierre de su centro municipal, se organizaron para continuar luchando.', '2019-01-01', 'https://static.filmin.es/images/media/25944/3/poster_0_3_550x0.png', 'Las Invisibles', 17.75,2019,'Louis-Julien Petit',1,1, 'DVD');
INSERT INTO peliculas VALUES(8,0, 'Basada en las propias experiencias de la directora, esta sorprendente ópera prima repleta de sororidad ha sido la elegida por Marruecos para representarles en los Oscar.', '2020-01-01', 'https://static.filmin.es/images/media/31814/4/poster_0_3_550x0.png', 'Adam', 5.95 ,2020,'Maryam Touzani',1,1, 'DVD');
INSERT INTO peliculas VALUES(9,0, 'La vida y obra de uno de los más grandes bailarines de ballet, Rudolf Nureyev, dirigida y protagonizada por Ralph Fiennes y adaptada por el nominado al Oscar David Hare ("Las horas").', '2018-01-01', 'https://static.filmin.es/images/media/26168/3/poster_0_3_550x0.png', 'El bailarín', 3.95 ,2018,'Ralph Fiennes',1,1, 'DVD');
INSERT INTO peliculas VALUES(10,0, 'Duelo e injustícia acaban convirtiendo a Diane Kruger en una heroína sedienta de venganza en la última película de Faith Akin, ganadora del Globo de Oro a la Mejor Película Extranjera.', '2017-01-01', 'https://static.filmin.es/images/media/22188/1/poster_0_3_550x0.png', 'En la sombra', 5.95 ,2017,'Fatih Akin',1,1, 'DVD');
INSERT INTO peliculas VALUES(11,0, 'Un apasionante documento de nuestro tiempo. A través de 56 escenas de corte costumbrista, Echo dibuja un retrato, mordaz y tierno, de la sociedad moderna.', '2019-01-01', 'https://static.filmin.es/images/media/31592/5/poster_0_3_550x0.png', 'Érase una vez en Navidad', 8.95 ,2019,'Rúnar Rúnarsson ',1,1, 'DVD');


-- VIDEOJUEGOS

INSERT INTO VIDEOJUEGOS VALUES(1,0, 'Vuelve el juego que te convierte en una estrella, vuelve Just dance con Just Dance 2021 para PlayStation 4, Xbox One, Nintendo Switch y PlayStation 5. Hazte con él en GAME y que empiece la fiesta.','2013-01-01', 'https://media.game.es/COVERV2/3D_L/182/182836.png', 'JUST DANCE 2021', 49.95,2021,'Film SA', 'NINTENDO_SWITCH');
INSERT INTO VIDEOJUEGOS VALUES(2,0, '¡Descubre los placeres de vivir en una isla desierta y crea tu hogar perfecto en Animal Crossing: New Horizons para Nintendo Switch!','2013-01-01','https://media.game.es/COVERV2/3D_L/169/169067.png', 'ANIMAL CROSSING: NEW HORIZONS', 49.95,2021,'Film SA', 'NINTENDO_SWITCH');
INSERT INTO VIDEOJUEGOS VALUES(3,0, 'Compra ahora el juego de PS4, consigue gratis el juego de PS5 el 4 de Diciembre y mantén tu progreso en Volta Football y FIFA Ultimate Team en la siguiente generación.','2013-01-01','https://media.game.es/COVERV2/3D_L/181/181108.png','FIFA 21', 39.95,2021,'Film SA', 'PS4');
INSERT INTO VIDEOJUEGOS VALUES(4,0, 'Adéntrate en una aventura compleja y desconocida en la que explorarás una impresionante versión alternativa de una historia clásica. ','2013-01-01','https://media.game.es/COVERV2/3D_L/173/173386.png','GOD OF WAR PS HITS', 9.95,2021,'Film SA', 'PS4');
INSERT INTO VIDEOJUEGOS VALUES(5,0, 'Tu nueva experiencia Minecraft está aquí, en esta nueva y completa edición de tu juego favorito se incluye contenido extra como parte de la Bedrock Edition, así podrás disfrutar de un Minecraft con un mundo más grande, mejor y mucho más bonito.','2013-01-01','https://media.game.es/COVERV2/3D_L/150/150363.png','MINECRAFT - NINTENDO SWITCH EDITION', 29.95,2021,'Film SA', 'NINTENDO_SWITCH');
INSERT INTO VIDEOJUEGOS VALUES(6,0, 'Otro de los títulos que aparecerán en Nintendo Switch con motivo del 35th aniversario de Super Mario Bros. ¡Únete a Mario, Luigi, la princesa Peach y Toad en una aventura para salvar el Reino de las hadas!','2021-01-01','https://media.game.es/COVERV2/3D_L/182/182786.png','SUPER MARIO 3D WORLD + BOWSERS FURY', 59.95,2021,'Film SA', 'NINTENDO_SWITCH');
INSERT INTO VIDEOJUEGOS VALUES(7,0, 'Explora un hermoso mundo abierto y cambiante ambientado en la despiadada Inglaterra de los años oscuros. ','2021-01-01','https://media.game.es/COVERV2/3D_L/180/180101.png','ASSASSINS CREED VALHALLA', 49.95,2021,'Film SA', 'PS4');
INSERT INTO VIDEOJUEGOS VALUES(8,0, 'Disfruta del caos en modo cooperativo desde el sofá con la posibilidad de jugar en pantalla dividida para tres o cuatro jugadores en multijugador local','2020-01-01','https://media.game.es/COVERV2/3D_L/165/165311.png','BORDERLANDS 3 EDICIÓN DELUXE', 9.95,2021,'Film SA', 'PS4');

-- MERCHANDASINGS

INSERT INTO merchandasings(id,version,tipo,fabricante,nombre,precio,descripcion,fecha_salida,imagen) VALUES (1, 0,'FIGURA', 'Tamashii Nations', 'EVA 01', 70.00,'Figura articulada Evangelion EVA-01 Test Type Rebuild of Evangelion 17cm','2020-01-10','https://m.media-amazon.com/images/I/71uzqfk8PVL._AC_UL320_.jpg');
INSERT INTO merchandasings(id,version,tipo,fabricante,nombre,precio,descripcion,fecha_salida,imagen) VALUES (2, 0,'FIGURA', 'Ban Presto', 'Super Saiyan 4 Full Scratch Son Goku', 27.00, 'Figura de plastico','2020-01-10','https://m.media-amazon.com/images/I/61EkYMTPOqL._AC_UL320_.jpg');
INSERT INTO merchandasings(id,version,tipo,fabricante,nombre,precio,descripcion,fecha_salida,imagen) VALUES (3, 0,'ROPA', 'Marvel', 'Camiseta Capitan America', 14.50, 'Un regalo perfecto para fanáticos de los Avengers','2016-05-10','https://m.media-amazon.com/images/I/713WP1I2QDL._AC_UL320_.jpg');
INSERT INTO merchandasings(id,version,tipo,fabricante,nombre,precio,descripcion,fecha_salida,imagen) VALUES (4, 0,'POSTER', 'Grupo Erik', ' Poster Pulp Fiction', 12.99, 'Perfecto para cambiar la decoración de tu sala de juegos con este póster de Pulp Fiction.','2019-06-10','https://m.media-amazon.com/images/I/61qGQG3woqL._AC_UL320_.jpg');

-- VENDEDOR-PELICULA

INSERT INTO VENDEDOR_PELICULAS VALUES(8,2);
INSERT INTO VENDEDOR_PELICULAS VALUES(8,3);

-- VENDEDOR-MERCHANDASING
INSERT INTO VENDEDOR_MERCHANDASINGS VALUES(8,1);
INSERT INTO VENDEDOR_MERCHANDASINGS VALUES(8,2);
INSERT INTO VENDEDOR_MERCHANDASINGS VALUES(8,3);
-- VENDEDOR-VIDEOJUEGO

INSERT INTO VENDEDOR_VIDEOJUEGOS VALUES(8,1);

--COMENTARIOS

INSERT INTO COMENTARIO(ID,VERSION, TITULO, TEXTO, CLIENTE_ID, PELICULA_ID) VALUES (1,0, 'Increible', 'No me la esperaba tan buena', 1, 1);
INSERT INTO COMENTARIO(ID, VERSION,TITULO, TEXTO, CLIENTE_ID, PELICULA_ID) VALUES (2,0, 'Titulo', 'Texto', 1, 2);

--REPRODUCTORES

INSERT INTO REPRODUCTORES( ID ,VERSION, NOMBRE , DESCRIPCION ) VALUES ( 4,0, 'DVD','El viejo amigo que te ayudaba a ver tus pelis allá por el 2000');
INSERT INTO REPRODUCTORES( ID ,VERSION, NOMBRE , DESCRIPCION ) VALUES ( 3,0, 'WII','La clásica consola de Nintendo');
INSERT INTO REPRODUCTORES( ID ,VERSION, NOMBRE , DESCRIPCION ) VALUES ( 2,0, 'XBOX SERIE X','La nueva consola de Microsoft');
INSERT INTO REPRODUCTORES( ID , VERSION,NOMBRE , DESCRIPCION ) VALUES ( 1,0, 'PS5','La nueva consola de Sony');

