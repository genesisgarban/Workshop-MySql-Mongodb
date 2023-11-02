CREATE DATABASE red_social;

USE red_social;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    nombre_usuario VARCHAR(45) UNIQUE,
    correo_electronico VARCHAR(45) UNIQUE
);

CREATE TABLE amistad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario1_id INT,
    usuario2_id INT,
    estado ENUM('aceptada', 'pendiente', 'rechazada'),
    fecha_amigos DATE,
    FOREIGN KEY (usuario1_id) REFERENCES usuarios(id),
    FOREIGN KEY (usuario2_id) REFERENCES usuarios(id)
);


CREATE TABLE publicaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    contenido TEXT,
    fecha_publicacion DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);


CREATE TABLE comentarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    publicacion_id INT,
    contenido TEXT,
    fecha_comentario DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (publicacion_id) REFERENCES publicaciones(id)
);

CREATE TABLE mensajes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    remitente_id INT,
    destinatario_id INT,
    contenido TEXT,
    fecha_envio DATE,
    FOREIGN KEY (remitente_id) REFERENCES usuarios(id),
    FOREIGN KEY (destinatario_id) REFERENCES usuarios(id)
);


-----------------------------------------------------------
use red_social;
INSERT INTO `red_social`.`usuarios`
(`ID`,
`Nombre`,
`Apellido`,
`NombreUsuario`,
`CorreoElectronico`)
VALUES
(1, 'Maria', 'Perez', 'mariperz23','mariperez23@gmail.com');
INSERT INTO `red_social`.`usuarios`
(`ID`,
`Nombre`,
`Apellido`,
`NombreUsuario`,
`CorreoElectronico`)
VALUES
(2, 'Jesus', 'Martinez', 'martinezj49', 'martinezj1@hotmail.com');
INSERT INTO `red_social`.`usuarios`
(`ID`,
`Nombre`,
`Apellido`,
`NombreUsuario`,
`CorreoElectronico`)
VALUES
(3,'Camila','Uzuga','camiu1998','camiu1998@gmail.com');
INSERT INTO `red_social`.`usuarios`
(`ID`,
`Nombre`,
`Apellido`,
`NombreUsuario`,
`CorreoElectronico`)
VALUES
(4, 'Pedro', 'Perez','pedrop187','pedrop2323@gmail.com');
INSERT INTO `red_social`.`usuarios`
(`ID`,
`Nombre`,
`Apellido`,
`NombreUsuario`,
`CorreoElectronico`)
VALUES
(5,'Carmen','Rojas', 'carmensita89','carmensita89@hotmail.com');
INSERT INTO `red_social`.`usuarios`
(`ID`,
`Nombre`,
`Apellido`,
`NombreUsuario`,
`CorreoElectronico`)
VALUES
(6, 'Freddy','Mosquera','mosqueraf','mosqueraf@gmail.com');
INSERT INTO `red_social`.`usuarios`
(`ID`,
`Nombre`,
`Apellido`,
`NombreUsuario`,
`CorreoElectronico`)
VALUES
(7,'Fernando','Caceres','caceres24','granate24@gmail.com');
INSERT INTO `red_social`.`usuarios`
(`ID`,
`Nombre`,
`Apellido`,
`NombreUsuario`,
`CorreoElectronico`)
VALUES
(8, 'Monica','Mendez','monimendez00','monimendez00@gmail.com');
INSERT INTO `red_social`.`amistad`
(`id`,
`usuario1_id`,
`usuario2_id`,
`estado`,
`fecha_amigos`)
VALUES
(1,1,2,'aceptada','2023-07-02');
INSERT INTO `red_social`.`amistad`
(`id`,
`usuario1_id`,
`usuario2_id`,
`estado`,
`fecha_amigos`)
VALUES
(2,1,3,'aceptada','2023-02-23');
INSERT INTO `red_social`.`amistad`
(`id`,
`usuario1_id`,
`usuario2_id`,
`estado`,
`fecha_amigos`)
VALUES
(3,2,3,'pendiente',NULL);
INSERT INTO `red_social`.`amistad`
(`id`,
`usuario1_id`,
`usuario2_id`,
`estado`,
`fecha_amigos`)
VALUES
(4,4,5,'pendiente','2023-04-05');
INSERT INTO `red_social`.`amistad`
(`id`,
`usuario1_id`,
`usuario2_id`,
`estado`,
`fecha_amigos`)
VALUES
(5,5,6,'rechazada','2023-10-09');
INSERT INTO `red_social`.`amistad`
(`id`,
`usuario1_id`,
`usuario2_id`,
`estado`,
`fecha_amigos`)
VALUES
(6,6,7,'aceptada','2023-03-19');
INSERT INTO `red_social`.`amistad`
(`id`,
`usuario1_id`,
`usuario2_id`,
`estado`,
`fecha_amigos`)
VALUES
(7,7,8,'aceptada','2023-01-22');
INSERT INTO `red_social`.`amistad`
(`id`,
`usuario1_id`,
`usuario2_id`,
`estado`,
`fecha_amigos`)
VALUES
(8,3,8,'aceptada','2023-05-27');
INSERT INTO `red_social`.`mensajes`
(`id`,
`remitente_id`,
`destinatario_id`,
`contenido`,
`fecha_envio`)
VALUES
(1,1,2,'Hola, como estas?','2023-10-29');
INSERT INTO `red_social`.`mensajes`
(`id`,
`remitente_id`,
`destinatario_id`,
`contenido`,
`fecha_envio`)
VALUES
(2,2,1,'Hola, estoy bien y tu?','2023-10-29');
INSERT INTO `red_social`.`mensajes`
(`id`,
`remitente_id`,
`destinatario_id`,
`contenido`,
`fecha_envio`)
VALUES
(3,3,4,'saludos','2023-10-28');
INSERT INTO `red_social`.`mensajes`
(`id`,
`remitente_id`,
`destinatario_id`,
`contenido`,
`fecha_envio`)
VALUES
(4,4,3,'Hola, que tal?','2023-10-29');
INSERT INTO `red_social`.`mensajes`
(`id`,
`remitente_id`,
`destinatario_id`,
`contenido`,
`fecha_envio`)
VALUES
(5,5,6,'buenos dias','2023-10-25');
INSERT INTO `red_social`.`mensajes`
(`id`,
`remitente_id`,
`destinatario_id`,
`contenido`,
`fecha_envio`)
VALUES
(6,6,5,'buenos dias, como va todo?','2023-10-23');
INSERT INTO `red_social`.`mensajes`
(`id`,
`remitente_id`,
`destinatario_id`,
`contenido`,
`fecha_envio`)
VALUES
(7,7,8,'Hola, como estas?','2023-10-21');
INSERT INTO `red_social`.`mensajes`
(`id`,
`remitente_id`,
`destinatario_id`,
`contenido`,
`fecha_envio`)
VALUES
(8,8,7,'Hola, que hay de nuevo?','2023-10-27');
INSERT INTO `red_social`.`publicaciones`
(`id`,
`usuario_id`,
`contenido`,
`fecha_publicacion`)
VALUES
(1,1,'Esta es mi primmera publicacion','2023-09-18');
INSERT INTO `red_social`.`publicaciones`
(`id`,
`usuario_id`,
`contenido`,
`fecha_publicacion`)
VALUES
(2,2,'Hola a todos, bienvenidos a mi perfil','2023-07-18');
INSERT INTO `red_social`.`publicaciones`
(`id`,
`usuario_id`,
`contenido`,
`fecha_publicacion`)
VALUES
(3,3,'Compartiendo una foto de mis vacaciones','2023-09-18');
INSERT INTO `red_social`.`publicaciones`
(`id`,
`usuario_id`,
`contenido`,
`fecha_publicacion`)
VALUES
(4,4,'Feliz cumpleaños a mi amigo!','2023-09-10');
INSERT INTO `red_social`.`publicaciones`
(`id`,
`usuario_id`,
`contenido`,
`fecha_publicacion`)
VALUES
(5,5,'nueva receta que quiero compartir con ustedes','2023-09-18');
INSERT INTO `red_social`.`publicaciones`
(`id`,
`usuario_id`,
`contenido`,
`fecha_publicacion`)
VALUES
(6,6,'Reflexiones de la vida','2023-07-01');
INSERT INTO `red_social`.`publicaciones`
(`id`,
`usuario_id`,
`contenido`,
`fecha_publicacion`)
VALUES
(7,7,'Un dia soleado en el parque','2023-05-18');
INSERT INTO `red_social`.`publicaciones`
(`id`,
`usuario_id`,
`contenido`,
`fecha_publicacion`)
VALUES
(8,8,'Trabajando en un nuevo proyecto','2023-08-22');
INSERT INTO `red_social`.`comentarios`
(`ID`,
`UsuarioID`,
`PublicacionID`,
`Contenido`,
`FechaComentario`)
VALUES
(1,1,2,'Excelente publicacion, me encanta','2023-08-18');
INSERT INTO `red_social`.`comentarios`
(`ID`,
`UsuarioID`,
`PublicacionID`,
`Contenido`,
`FechaComentario`)
VALUES
(2,2,1,'Gracias por la bienvenida!','2023-10-18');
INSERT INTO `red_social`.`comentarios`
(`ID`,
`UsuarioID`,
`PublicacionID`,
`Contenido`,
`FechaComentario`)
VALUES
(3,3,4,'feliz cumpleaños!','2023-10-18');
INSERT INTO `red_social`.`comentarios`
(`ID`,
`UsuarioID`,
`PublicacionID`,
`Contenido`,
`FechaComentario`)
VALUES
(4,4,3,'Que hermosa vista','2023-10-18');
INSERT INTO `red_social`.`comentarios`
(`ID`,
`UsuarioID`,
`PublicacionID`,
`Contenido`,
`FechaComentario`)
VALUES
(5,5,6,'Se ve delicioso, tienes la receta?','2023-10-18');
INSERT INTO `red_social`.`comentarios`
(`ID`,
`UsuarioID`,
`PublicacionID`,
`Contenido`,
`FechaComentario`)
VALUES
(6,6,5,'La vida es un regalo','2023-10-18');
INSERT INTO `red_social`.`comentarios`
(`ID`,
`UsuarioID`,
`PublicacionID`,
`Contenido`,
`FechaComentario`)
VALUES
(7,7,8,'Hermosa foto!','2023-10-18');
INSERT INTO `red_social`.`comentarios`
(`ID`,
`UsuarioID`,
`PublicacionID`,
`Contenido`,
`FechaComentario`)
VALUES
(8,8,7,'Buena suerte en tu proyecto!','2023-10-18');

-----------------------------------------------------

SELECT * FROM publicaciones WHERE usuario_id = 5;
SELECT * FROM publicaciones WHERE contenido LIKE '%Hola%';
SELECT * FROM comentarios WHERE publicacionID = 1;
SELECT usuario2_id AS amigo_id
FROM amistad
WHERE usuario1_id = 5 AND estado = 'aceptada'
UNION
SELECT usuario1_id AS amigo_id
FROM amistad
WHERE usuario2_id = 5 AND estado = 'aceptada';
SELECT COUNT(*) AS cantidad_amigos
FROM amistad
WHERE (usuario1_id = 4 OR usuario2_id = 4) AND estado = 'aceptada';
SELECT p.*
FROM publicaciones p
INNER JOIN amistad a ON (p.usuario_id = a.usuario1_id AND a.usuario2_id = 3 AND a.estado = 'aceptada')
WHERE a.estado = 'aceptada';
SELECT DISTINCT c.usuarioid
FROM comentarios c
WHERE c.publicacionID = 8;
SELECT *
FROM amistad
WHERE (usuario1_id = 7 OR usuario2_id = 7) AND estado = 'pendiente';
SELECT *FROM publicaciones
ORDER BY fecha_publicacion DESC
LIMIT 3;
SELECT usuario_id, fecha, actividad
FROM (
  SELECT usuario_id, fecha_publicacion AS fecha, 'Publicación' AS actividad
  FROM publicaciones
  WHERE usuario_id = 6
  UNION ALL
  SELECT c.usuarioid, c.fechacomentario AS fecha, 'Comentario' AS actividad
  FROM comentarios c
  WHERE c.usuarioid = 6
) AS actividad_usuario
ORDER BY fecha DESC;
SELECT p.*
FROM publicaciones p
INNER JOIN amistad a ON (
  (p.usuario_id = a.usuario2_id AND a.usuario1_id = 1)
  OR
  (p.usuario_id = a.usuario1_id AND a.usuario2_id = 1)
)
WHERE a.estado = 'aceptada'
AND p.fecha_publicacion BETWEEN '2023-01-01' AND '2023-10-31';
SELECT DISTINCT remitente_id
FROM mensajes
WHERE destinatario_id = 6;
SELECT *
FROM mensajes
WHERE (remitente_id = 1 AND destinatario_id = 2)
   OR (remitente_id = 2 AND destinatario_id = 1)
ORDER BY fecha_envio;
SELECT *
FROM usuarios
WHERE id NOT IN (SELECT DISTINCT usuario1_id FROM amistad) 
   AND id NOT IN (SELECT DISTINCT usuario2_id FROM amistad);
   SELECT DISTINCT u.*
FROM usuarios u
JOIN publicaciones p ON u.id = p.usuario_id
JOIN comentarios c ON p.id = c.publicacion_id AND c.usuario_id = p.usuario_id;
SELECT publicaciones.*, COUNT(comentarios.id) AS total_comentarios
FROM publicaciones
LEFT JOIN comentarios ON publicaciones.id = comentarios.publicacionid
GROUP BY publicaciones.id
ORDER BY total_comentarios DESC
LIMIT 3;

































