/* Delimitador cambiado a ; */
/* Conectando a 127.0.0.1 por MySQL (TCP/IP), usuario root, usando contraseña: No ... */
SELECT CONNECTION_ID();
/* Conectado. ID de Hilo: 2 */
/* Juego de caracteres: utf8mb4 */
SHOW STATUS;
SHOW VARIABLES;
SHOW DATABASES;
/* Entrando a la sesión "tramite" */
USE `tramite`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='tramite';
SHOW TABLE STATUS FROM `tramite`;
SHOW FUNCTION STATUS WHERE `Db`='tramite';
SHOW PROCEDURE STATUS WHERE `Db`='tramite';
SHOW TRIGGERS FROM `tramite`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='information_schema';
SHOW TABLE STATUS FROM `information_schema`;
SHOW FUNCTION STATUS WHERE `Db`='information_schema';
SHOW PROCEDURE STATUS WHERE `Db`='information_schema';
SHOW TRIGGERS FROM `information_schema`;
SHOW EVENTS FROM `information_schema`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='tramite';
SHOW CREATE TABLE `tramite`.`usuario`;
SHOW COLLATION;
SHOW ENGINES;
SELECT * FROM `tramite`.`usuario` LIMIT 1000;
SHOW CREATE TABLE `tramite`.`usuario`;
INSERT INTO `tramite`.`usuario` (`n_usu`) VALUES ('Benjamin');
/* Error de SQL (1452): Cannot add or update a child row: a foreign key constraint fails (`tramite`.`usuario`, CONSTRAINT `fk_usuario_oficina1` FOREIGN KEY (`oficina_id_ofi`) REFERENCES `oficina` (`id_ofi`) ON DELETE NO ACTION ON UPDATE NO ACTION) */
INSERT INTO `tramite`.`usuario` (`n_usu`) VALUES ('Benjamin');
/* Error de SQL (1452): Cannot add or update a child row: a foreign key constraint fails (`tramite`.`usuario`, CONSTRAINT `fk_usuario_oficina1` FOREIGN KEY (`oficina_id_ofi`) REFERENCES `oficina` (`id_ofi`) ON DELETE NO ACTION ON UPDATE NO ACTION) */
SHOW CREATE TABLE `tramite`.`oficina`;
SELECT * FROM `tramite`.`oficina` LIMIT 1000;
SHOW CREATE TABLE `tramite`.`oficina`;
SHOW CREATE TABLE `tramite`.`usuario`;
SELECT * FROM `tramite`.`usuario` LIMIT 1000;
SHOW CREATE TABLE `tramite`.`usuario`;
SHOW CREATE TABLE `tramite`.`oficina`;
SELECT * FROM `tramite`.`oficina` LIMIT 1000;
SHOW CREATE TABLE `tramite`.`oficina`;
SELECT * FROM `tramite`.`oficina` ORDER BY `oficinacol` ASC LIMIT 1000;
SHOW CREATE TABLE `tramite`.`oficina`;
SELECT * FROM `tramite`.`oficina` ORDER BY `oficinacol` DESC LIMIT 1000;
SHOW CREATE TABLE `tramite`.`oficina`;
SELECT * FROM `tramite`.`oficina` ORDER BY `oficinacol` DESC LIMIT 1000;
/* Error de SQL (1054): Unknown column 'oficinacol' in 'order clause' */
SHOW CREATE TABLE `tramite`.`usuario`;
SELECT * FROM `tramite`.`usuario` LIMIT 1000;
SHOW CREATE TABLE `tramite`.`usuario`;
SHOW CREATE TABLE `tramite`.`oficina`;
SELECT * FROM `tramite`.`oficina` LIMIT 1000;
SHOW CREATE TABLE `tramite`.`oficina`;
HELP 'CONTENTS';
HELP 'INT';
HELP 'Account Management';
HELP 'Administration';
HELP 'Compound Statements';
HELP 'Data Definition';
HELP 'Data Manipulation';
HELP 'Data Types';
HELP 'INT';
INSERT INTO `tramite`.`oficina` (`n_ofi`) VALUES ('Puno');
SELECT LAST_INSERT_ID();
SELECT `id_ofi`, `n_ofi` FROM `tramite`.`oficina` WHERE  `id_ofi`=1;
SHOW CREATE TABLE `tramite`.`usuario`;
SELECT * FROM `tramite`.`usuario` LIMIT 1000;
SHOW CREATE TABLE `tramite`.`usuario`;
SHOW CREATE TABLE `tramite`.`oficina`;
SELECT * FROM `tramite`.`usuario` ORDER BY `a_usu` ASC LIMIT 1000;
SHOW CREATE TABLE `tramite`.`usuario`;
SELECT * FROM `tramite`.`usuario` ORDER BY `a_usu` ASC, `contraseña` ASC LIMIT 1000;
SHOW CREATE TABLE `tramite`.`usuario`;
SELECT * FROM `tramite`.`usuario` ORDER BY `a_usu` ASC, `contraseña` ASC, `n_usu` ASC LIMIT 1000;
SHOW CREATE TABLE `tramite`.`usuario`;
SHOW CREATE TABLE `oficina`;
SELECT `id_ofi`, LEFT(`n_ofi`, 256) FROM `oficina` GROUP BY `id_ofi` ORDER BY `n_ofi` LIMIT 1000;
HELP 'CONTENTS';
HELP 'INT';
HELP 'Account Management';
HELP 'Administration';
HELP 'Compound Statements';
HELP 'Data Definition';
HELP 'Data Manipulation';
HELP 'Data Types';
HELP 'INT';
INSERT INTO `tramite`.`usuario` (`id_usu`, `n_usu`, `a_usu`, `contraseña`, `oficina_id_ofi`) VALUES (1, 'Benjamin', 'Flores Copa', '@benjamin', 1);
SELECT `id_usu`, `n_usu`, `a_usu`, `contraseña`, `oficina_id_ofi` FROM `tramite`.`usuario` WHERE  `id_usu`=1;