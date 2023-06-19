/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : prueba_desis

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 18/06/2023 22:27:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tcandidatos
-- ----------------------------
DROP TABLE IF EXISTS `tcandidatos`;
CREATE TABLE `tcandidatos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_persona` int NULL DEFAULT NULL,
  `partido` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `estatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1',
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_persona`(`id_persona`) USING BTREE,
  CONSTRAINT `tcandidatos_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `tpersonas` (`idpersona`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tcandidatos
-- ----------------------------
INSERT INTO `tcandidatos` VALUES (1, 13, 'VERDE', '1', '2023-06-17 20:45:35', NULL);
INSERT INTO `tcandidatos` VALUES (2, 14, 'AMARILLO', '1', '2023-06-17 20:46:20', NULL);
INSERT INTO `tcandidatos` VALUES (3, 15, 'AZUL', '1', '2023-06-17 20:46:43', NULL);
INSERT INTO `tcandidatos` VALUES (4, 16, 'BLANCO', '1', '2023-06-17 20:47:18', NULL);
INSERT INTO `tcandidatos` VALUES (5, 17, 'NEGRO', '1', '2023-06-17 20:47:49', NULL);

-- ----------------------------
-- Table structure for tcomunas
-- ----------------------------
DROP TABLE IF EXISTS `tcomunas`;
CREATE TABLE `tcomunas`  (
  `idcomuna` smallint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `provincia` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `idregion` smallint NOT NULL,
  `estatus` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcomuna`) USING BTREE,
  INDEX `idregion`(`idregion`) USING BTREE,
  CONSTRAINT `tcomunas_ibfk_1` FOREIGN KEY (`idregion`) REFERENCES `tregiones` (`idregion`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 349 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tcomunas
-- ----------------------------
INSERT INTO `tcomunas` VALUES (1, 'SANTIAGO', 'SANTIAGO', 7, '1');
INSERT INTO `tcomunas` VALUES (3, 'LA CISTERNA', 'SANTIAGO', 7, '1');
INSERT INTO `tcomunas` VALUES (4, 'Camarones', 'Arica', 1, '1');
INSERT INTO `tcomunas` VALUES (5, 'Putre', 'Parinacota', 1, '1');
INSERT INTO `tcomunas` VALUES (6, 'General Lagos', 'Parinacota', 1, '1');
INSERT INTO `tcomunas` VALUES (7, 'Iquique', 'Iquique', 2, '1');
INSERT INTO `tcomunas` VALUES (8, 'Alto Hospicio', 'Iquique', 2, '1');
INSERT INTO `tcomunas` VALUES (9, 'Pozo Almonte', 'Tamarugal', 2, '1');
INSERT INTO `tcomunas` VALUES (10, 'Camiña', 'Tamarugal', 2, '1');
INSERT INTO `tcomunas` VALUES (11, 'Colchane', 'Tamarugal', 2, '1');
INSERT INTO `tcomunas` VALUES (12, 'Huara', 'Tamarugal', 2, '1');
INSERT INTO `tcomunas` VALUES (13, 'Pica', 'Tamarugal', 2, '1');
INSERT INTO `tcomunas` VALUES (14, 'Antofagasta', 'Antofagasta', 3, '1');
INSERT INTO `tcomunas` VALUES (15, 'Mejillones', 'Mejillones', 3, '1');
INSERT INTO `tcomunas` VALUES (16, 'Sierra Gorda', 'Antofagasta', 3, '1');
INSERT INTO `tcomunas` VALUES (17, 'Taltal', 'Antofagasta', 3, '1');
INSERT INTO `tcomunas` VALUES (18, 'Calama', 'El Loa', 3, '1');
INSERT INTO `tcomunas` VALUES (19, 'Ollagüe', 'El Loa', 3, '1');
INSERT INTO `tcomunas` VALUES (20, 'San Pedro de Atacama', 'El Loa', 3, '1');
INSERT INTO `tcomunas` VALUES (21, 'Tocopilla', 'Tocopilla', 3, '1');
INSERT INTO `tcomunas` VALUES (22, 'María Elena', 'Tocopilla', 3, '1');
INSERT INTO `tcomunas` VALUES (23, 'Caldera', 'Copiapó', 4, '1');
INSERT INTO `tcomunas` VALUES (24, 'Tierra Amarilla', 'Copiapó', 4, '1');
INSERT INTO `tcomunas` VALUES (25, 'Chañaral', 'Chañaral', 4, '1');
INSERT INTO `tcomunas` VALUES (26, 'Diego de Almagro', 'Chañaral', 4, '1');
INSERT INTO `tcomunas` VALUES (27, 'Vallenar', 'Huasco', 4, '1');
INSERT INTO `tcomunas` VALUES (28, 'Alto del Carmen', 'Huasco', 4, '1');
INSERT INTO `tcomunas` VALUES (29, 'Freirina', 'Huasco', 4, '1');
INSERT INTO `tcomunas` VALUES (30, 'Huasco', 'Huasco', 4, '1');
INSERT INTO `tcomunas` VALUES (31, 'La Serena', 'elqui', 5, '1');
INSERT INTO `tcomunas` VALUES (32, 'Coquimbo', 'Elqui', 5, '1');
INSERT INTO `tcomunas` VALUES (33, 'Andacollo', 'Elqui', 5, '1');
INSERT INTO `tcomunas` VALUES (34, 'La Higuera', 'Elqui', 5, '1');
INSERT INTO `tcomunas` VALUES (35, 'Paihuano', 'Elqui', 5, '1');
INSERT INTO `tcomunas` VALUES (36, 'Vicuña', 'Elqui', 5, '1');
INSERT INTO `tcomunas` VALUES (37, 'Illapel', 'Choapa', 5, '1');
INSERT INTO `tcomunas` VALUES (38, 'Canela', 'Choapa', 5, '1');
INSERT INTO `tcomunas` VALUES (39, 'Los Vilos', 'Choapa', 5, '1');
INSERT INTO `tcomunas` VALUES (40, 'Salamanca', 'Choapa', 5, '1');
INSERT INTO `tcomunas` VALUES (41, 'Ovalle', 'Limarí', 5, '1');
INSERT INTO `tcomunas` VALUES (42, 'Combarbalá', 'Limarí', 5, '1');
INSERT INTO `tcomunas` VALUES (43, 'Monte Patria', 'Limarí', 5, '1');
INSERT INTO `tcomunas` VALUES (44, 'Punitaqui', 'Limarí', 5, '1');
INSERT INTO `tcomunas` VALUES (45, 'Río Hurtado', 'Limarí', 5, '1');
INSERT INTO `tcomunas` VALUES (46, 'Valparaíso', 'Valparaíso', 6, '1');
INSERT INTO `tcomunas` VALUES (47, 'Casablanca', 'Valparaíso', 6, '1');
INSERT INTO `tcomunas` VALUES (48, 'Concón', 'Valparaíso', 6, '1');
INSERT INTO `tcomunas` VALUES (49, 'Juan Fernández', 'Valparaíso', 6, '1');
INSERT INTO `tcomunas` VALUES (50, 'Puchuncaví', 'Valparaíso', 6, '1');
INSERT INTO `tcomunas` VALUES (51, 'Quintero', 'Valparaíso', 6, '1');
INSERT INTO `tcomunas` VALUES (52, 'Viña del Mar', 'Valparaíso', 6, '1');
INSERT INTO `tcomunas` VALUES (53, 'Isla de Pascua', 'Isla de Pascua', 6, '1');
INSERT INTO `tcomunas` VALUES (54, 'Los Andes', 'Los Andes', 6, '1');
INSERT INTO `tcomunas` VALUES (55, 'Calle Larga', 'Los Andes', 6, '1');
INSERT INTO `tcomunas` VALUES (56, 'Rinconada', 'Los Andes', 6, '1');
INSERT INTO `tcomunas` VALUES (57, 'San Esteban', 'Los Andes', 6, '1');
INSERT INTO `tcomunas` VALUES (58, 'La Ligua', 'Petorca', 6, '1');
INSERT INTO `tcomunas` VALUES (59, 'Cabildo', 'Petorca', 6, '1');
INSERT INTO `tcomunas` VALUES (60, 'Papudo', 'Petorca', 6, '1');
INSERT INTO `tcomunas` VALUES (61, 'Petorca', 'Petorca', 6, '1');
INSERT INTO `tcomunas` VALUES (62, 'Zapallar', 'Petorca', 6, '1');
INSERT INTO `tcomunas` VALUES (63, 'Quillota', 'Quillota', 6, '1');
INSERT INTO `tcomunas` VALUES (64, 'La Calera', 'Quillota', 6, '1');
INSERT INTO `tcomunas` VALUES (65, 'Hijuelas', 'Quillota', 6, '1');
INSERT INTO `tcomunas` VALUES (66, 'La Cruz', 'Quillota', 6, '1');
INSERT INTO `tcomunas` VALUES (67, 'Nogales', 'Quillota', 6, '1');
INSERT INTO `tcomunas` VALUES (68, 'San Antonio', 'San Antonio', 6, '1');
INSERT INTO `tcomunas` VALUES (69, 'Algarrobo', 'San Antonio', 6, '1');
INSERT INTO `tcomunas` VALUES (70, 'Cartagena', 'San Antonio', 6, '1');
INSERT INTO `tcomunas` VALUES (71, 'El Quisco', 'San Antonio', 6, '1');
INSERT INTO `tcomunas` VALUES (72, 'El Tabo', 'San Antonio', 6, '1');
INSERT INTO `tcomunas` VALUES (73, 'Santo Domingo', 'San Antonio', 6, '1');
INSERT INTO `tcomunas` VALUES (74, 'San Felipe', 'San Felipe de Aconcagua', 6, '1');
INSERT INTO `tcomunas` VALUES (75, 'Catemu', 'San Felipe de Aconcagua', 6, '1');
INSERT INTO `tcomunas` VALUES (76, 'Llaillay', 'San Felipe de Aconcagua', 6, '1');
INSERT INTO `tcomunas` VALUES (77, 'Panquehue', 'San Felipe de Aconcagua', 6, '1');
INSERT INTO `tcomunas` VALUES (78, 'Putaendo', 'San Felipe de Aconcagua', 6, '1');
INSERT INTO `tcomunas` VALUES (79, 'Santa María', 'San Felipe de Aconcagua', 6, '1');
INSERT INTO `tcomunas` VALUES (80, 'Quilpué', 'Marga Marga', 6, '1');
INSERT INTO `tcomunas` VALUES (81, 'Limache', 'Marga Marga', 6, '1');
INSERT INTO `tcomunas` VALUES (82, 'Olmué', 'Marga Marga', 6, '1');
INSERT INTO `tcomunas` VALUES (83, 'Villa Alemana', 'Marga Marga', 6, '1');
INSERT INTO `tcomunas` VALUES (84, 'Rancagua', 'Cachapoal', 8, '1');
INSERT INTO `tcomunas` VALUES (85, 'Codegua', 'Cachapoal', 8, '1');
INSERT INTO `tcomunas` VALUES (86, 'Coinco', 'Cachapoal', 8, '1');
INSERT INTO `tcomunas` VALUES (87, 'Coltauco', 'Cachapoal', 8, '1');
INSERT INTO `tcomunas` VALUES (88, 'Doñihue', 'Cachapoal', 8, '1');
INSERT INTO `tcomunas` VALUES (89, 'Graneros', 'Cachapoal	', 8, '1');
INSERT INTO `tcomunas` VALUES (90, 'Las Cabras', 'Cachapoal', 8, '1');
INSERT INTO `tcomunas` VALUES (91, 'Machalí', 'Cachapoal', 8, '1');
INSERT INTO `tcomunas` VALUES (92, 'Malloa', 'Cachapoal', 8, '1');
INSERT INTO `tcomunas` VALUES (93, 'Mostazal', 'Cachapoal', 8, '1');
INSERT INTO `tcomunas` VALUES (94, 'Olivar', 'Cachapoal', 8, '1');
INSERT INTO `tcomunas` VALUES (95, 'Peumo', 'Cachapoal	', 8, '1');
INSERT INTO `tcomunas` VALUES (96, 'Pichidegua', 'Cachapoal', 8, '1');
INSERT INTO `tcomunas` VALUES (97, 'Quinta de Tilcoco', 'Cachapoal', 8, '1');
INSERT INTO `tcomunas` VALUES (98, 'Rengo', 'Cachapoal', 8, '1');
INSERT INTO `tcomunas` VALUES (99, 'Requínoa', 'Cachapoal', 8, '1');
INSERT INTO `tcomunas` VALUES (100, 'Arica', 'ARICA', 1, '1');
INSERT INTO `tcomunas` VALUES (101, 'Camarones', 'Arica', 1, '1');
INSERT INTO `tcomunas` VALUES (102, 'La Estrella', 'Cardenal Caro', 8, '1');
INSERT INTO `tcomunas` VALUES (103, 'Litueche', 'Cardenal Caro', 8, '1');
INSERT INTO `tcomunas` VALUES (104, 'Marchihue', 'Cardenal Caro', 8, '1');
INSERT INTO `tcomunas` VALUES (105, 'Navidad', 'Cardenal Caro', 8, '1');
INSERT INTO `tcomunas` VALUES (106, 'Paredones', 'Cardenal Caro', 8, '1');
INSERT INTO `tcomunas` VALUES (107, 'San Fernando', 'Colchagua', 8, '1');
INSERT INTO `tcomunas` VALUES (108, 'Chépica', 'Colchagua', 8, '1');
INSERT INTO `tcomunas` VALUES (109, 'Chimbarongo', 'Colchagua', 8, '1');
INSERT INTO `tcomunas` VALUES (110, 'Lolol', 'Colchagua', 8, '1');
INSERT INTO `tcomunas` VALUES (111, 'Nancagua', 'Colchagua', 8, '1');
INSERT INTO `tcomunas` VALUES (112, 'Palmilla', 'Colchagua', 8, '1');
INSERT INTO `tcomunas` VALUES (113, 'Peralillo', 'Colchagua', 8, '1');
INSERT INTO `tcomunas` VALUES (114, 'Placilla', 'Colchagua', 8, '1');
INSERT INTO `tcomunas` VALUES (115, 'Pumanque', 'Colchagua', 8, '1');
INSERT INTO `tcomunas` VALUES (116, 'Santa Cruz', 'Colchagua', 8, '1');
INSERT INTO `tcomunas` VALUES (117, 'Talca', 'Talca', 9, '1');
INSERT INTO `tcomunas` VALUES (118, 'Constitución', 'Talca', 9, '1');
INSERT INTO `tcomunas` VALUES (119, 'Curepto', 'Talca', 9, '1');
INSERT INTO `tcomunas` VALUES (120, 'Empedrado', 'Talca', 9, '1');
INSERT INTO `tcomunas` VALUES (121, 'Maule', 'Talca', 9, '1');
INSERT INTO `tcomunas` VALUES (122, 'Pelarco', 'Talca', 9, '1');
INSERT INTO `tcomunas` VALUES (123, 'Pencahue', 'Talca', 9, '1');
INSERT INTO `tcomunas` VALUES (124, 'Río Claro', 'Talca', 9, '1');
INSERT INTO `tcomunas` VALUES (125, 'San Clemente', 'Talca', 9, '1');
INSERT INTO `tcomunas` VALUES (126, 'San Rafael', 'Talca', 9, '1');
INSERT INTO `tcomunas` VALUES (127, 'Cauquenes', 'Cauquenes', 9, '1');
INSERT INTO `tcomunas` VALUES (128, 'Chanco', 'Cauquenes', 9, '1');
INSERT INTO `tcomunas` VALUES (129, 'Pelluhue', 'Cauquenes', 9, '1');
INSERT INTO `tcomunas` VALUES (130, 'Curicó', 'Curicó', 9, '1');
INSERT INTO `tcomunas` VALUES (131, 'Hualañé', 'Curicó', 9, '1');
INSERT INTO `tcomunas` VALUES (132, 'Licantén', 'Curicó', 9, '1');
INSERT INTO `tcomunas` VALUES (133, 'Molina', 'Curicó', 9, '1');
INSERT INTO `tcomunas` VALUES (134, 'Rauco', 'Curicó', 9, '1');
INSERT INTO `tcomunas` VALUES (135, 'Romeral', 'Curicó', 9, '1');
INSERT INTO `tcomunas` VALUES (136, 'Sagrada Familia', 'Curicó', 9, '1');
INSERT INTO `tcomunas` VALUES (137, 'Teno', 'Curicó', 9, '1');
INSERT INTO `tcomunas` VALUES (138, 'Vichuquén', 'Curicó', 9, '1');
INSERT INTO `tcomunas` VALUES (139, 'Linares', 'Linares', 9, '1');
INSERT INTO `tcomunas` VALUES (140, 'Colbún', 'Linares', 9, '1');
INSERT INTO `tcomunas` VALUES (141, 'Longaví', 'Linares', 9, '1');
INSERT INTO `tcomunas` VALUES (142, 'Parral', 'Linares', 9, '1');
INSERT INTO `tcomunas` VALUES (143, 'Retiro', 'Linares', 9, '1');
INSERT INTO `tcomunas` VALUES (144, 'San Javier', 'Linares', 9, '1');
INSERT INTO `tcomunas` VALUES (145, 'Villa Alegre', 'Linares', 9, '1');
INSERT INTO `tcomunas` VALUES (146, 'Yerbas Buenas', 'Linares', 9, '1');
INSERT INTO `tcomunas` VALUES (147, 'San Carlos', 'Punilla', 16, '1');
INSERT INTO `tcomunas` VALUES (148, 'San Fabián', 'Punilla', 16, '1');
INSERT INTO `tcomunas` VALUES (149, 'Coihueco', 'Punilla', 16, '1');
INSERT INTO `tcomunas` VALUES (150, 'Ñiquén', 'Punilla', 16, '1');
INSERT INTO `tcomunas` VALUES (151, 'San Nicolás', 'Punilla', 16, '1');
INSERT INTO `tcomunas` VALUES (152, 'Bulnes', 'Diguillín', 16, '1');
INSERT INTO `tcomunas` VALUES (153, 'Chillán', 'Diguillín', 16, '1');
INSERT INTO `tcomunas` VALUES (154, 'Chillán Viejo', 'Diguillín', 16, '1');
INSERT INTO `tcomunas` VALUES (155, 'El Carmen', 'Diguillín', 16, '1');
INSERT INTO `tcomunas` VALUES (156, 'Pemuco', 'Diguillín', 16, '1');
INSERT INTO `tcomunas` VALUES (157, 'Pinto', 'Diguillín', 16, '1');
INSERT INTO `tcomunas` VALUES (158, 'Quillón', 'Diguillín', 16, '1');
INSERT INTO `tcomunas` VALUES (159, 'San Ignacio', 'Diguillín', 16, '1');
INSERT INTO `tcomunas` VALUES (160, 'Yungay', 'Diguillín', 16, '1');
INSERT INTO `tcomunas` VALUES (161, 'Quirihue', 'Itata', 16, '1');
INSERT INTO `tcomunas` VALUES (162, 'Cobquecura', 'Itata', 16, '1');
INSERT INTO `tcomunas` VALUES (163, 'Coelemu', 'Itata', 16, '1');
INSERT INTO `tcomunas` VALUES (164, 'Ninhue', 'Itata', 16, '1');
INSERT INTO `tcomunas` VALUES (165, 'Portezuelo', 'Itata', 16, '1');
INSERT INTO `tcomunas` VALUES (166, 'Ránqui', 'Itata', 16, '1');
INSERT INTO `tcomunas` VALUES (167, 'Treguaco', 'Itata', 16, '1');
INSERT INTO `tcomunas` VALUES (168, 'Concepción', 'Concepción', 10, '1');
INSERT INTO `tcomunas` VALUES (169, 'Coronel', 'Concepción', 10, '1');
INSERT INTO `tcomunas` VALUES (170, 'Chiguayante', 'Concepción', 10, '1');
INSERT INTO `tcomunas` VALUES (171, 'Florida', 'Concepción', 10, '1');
INSERT INTO `tcomunas` VALUES (172, 'Hualqui', 'Concepción', 10, '1');
INSERT INTO `tcomunas` VALUES (173, 'Lota', 'Concepción', 10, '1');
INSERT INTO `tcomunas` VALUES (174, 'Penco', 'Concepción', 10, '1');
INSERT INTO `tcomunas` VALUES (175, 'San Pedro de La Paz', 'Concepción', 10, '1');
INSERT INTO `tcomunas` VALUES (176, 'Santa Juana', 'Concepción', 10, '1');
INSERT INTO `tcomunas` VALUES (177, 'Talcahuano', 'Concepción', 10, '1');
INSERT INTO `tcomunas` VALUES (178, 'Tomé', 'Concepción', 10, '1');
INSERT INTO `tcomunas` VALUES (179, 'Hualpén', 'Concepción', 10, '1');
INSERT INTO `tcomunas` VALUES (180, 'Lebu', 'Arauco', 10, '1');
INSERT INTO `tcomunas` VALUES (181, 'Arauco', 'Arauco', 10, '1');
INSERT INTO `tcomunas` VALUES (182, 'Cañete', 'Arauco', 10, '1');
INSERT INTO `tcomunas` VALUES (183, 'Contulmo', 'Arauco', 10, '1');
INSERT INTO `tcomunas` VALUES (184, 'Curanilahue', 'Arauco', 10, '1');
INSERT INTO `tcomunas` VALUES (185, 'Los Álamos', 'Arauco', 10, '1');
INSERT INTO `tcomunas` VALUES (186, 'Tirúa', 'Arauco', 10, '1');
INSERT INTO `tcomunas` VALUES (187, 'Los Ángeles', 'Biobío', 10, '1');
INSERT INTO `tcomunas` VALUES (188, 'Antuco', 'Biobío', 10, '1');
INSERT INTO `tcomunas` VALUES (189, 'Cabrero', 'Biobío', 10, '1');
INSERT INTO `tcomunas` VALUES (190, 'Laja', 'Biobío', 10, '1');
INSERT INTO `tcomunas` VALUES (191, 'Mulchén', 'Biobío', 10, '1');
INSERT INTO `tcomunas` VALUES (192, 'Nacimiento', 'Biobío', 10, '1');
INSERT INTO `tcomunas` VALUES (193, 'Negrete', 'Biobío', 10, '1');
INSERT INTO `tcomunas` VALUES (194, 'Quilaco', 'Biobío', 10, '1');
INSERT INTO `tcomunas` VALUES (195, 'Quilleco', 'Biobío', 10, '1');
INSERT INTO `tcomunas` VALUES (196, 'San Rosendo', 'Biobío', 10, '1');
INSERT INTO `tcomunas` VALUES (197, 'Santa Bárbara', 'Biobío', 10, '1');
INSERT INTO `tcomunas` VALUES (198, 'Tucapel', 'Biobío', 10, '1');
INSERT INTO `tcomunas` VALUES (199, 'Yumbel', 'Biobío', 10, '1');
INSERT INTO `tcomunas` VALUES (200, 'Alto Biobío', 'Biobío', 10, '1');
INSERT INTO `tcomunas` VALUES (201, 'Temuco', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (202, 'Carahue', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (203, 'Cunco', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (204, 'Curarrehue', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (205, 'Freire', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (206, 'Galvarino', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (207, 'Gorbea', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (208, 'Lautaro', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (209, 'Loncoche', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (210, 'Melipeuco', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (211, 'Nueva Imperial', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (212, 'Padre Las Casas', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (213, 'Perquenco', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (214, 'Pitrufquén', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (215, 'Pucón', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (216, 'Saavedra', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (217, 'Teodoro Schmidt', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (218, 'Toltén', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (219, 'Vilcún', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (220, 'Villarrica', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (221, 'Cholchol', 'Cautín', 11, '1');
INSERT INTO `tcomunas` VALUES (222, 'Angol', 'Malleco', 11, '1');
INSERT INTO `tcomunas` VALUES (223, 'Collipulli', 'Malleco', 11, '1');
INSERT INTO `tcomunas` VALUES (224, 'Curacautín', 'Malleco', 11, '1');
INSERT INTO `tcomunas` VALUES (225, 'Ercilla', 'Malleco', 11, '1');
INSERT INTO `tcomunas` VALUES (226, 'Lonquimay', 'Malleco', 11, '1');
INSERT INTO `tcomunas` VALUES (227, 'Los Sauces', 'Malleco', 11, '1');
INSERT INTO `tcomunas` VALUES (228, 'Lumaco', 'Malleco', 11, '1');
INSERT INTO `tcomunas` VALUES (229, 'Purén', 'Malleco', 11, '1');
INSERT INTO `tcomunas` VALUES (230, 'Renaico', 'Malleco', 11, '1');
INSERT INTO `tcomunas` VALUES (231, 'Traiguén', 'Malleco', 11, '1');
INSERT INTO `tcomunas` VALUES (232, 'Victoria', 'Malleco', 11, '1');
INSERT INTO `tcomunas` VALUES (233, 'Valdivia', 'Valdivia', 12, '1');
INSERT INTO `tcomunas` VALUES (234, 'Corral', 'Valdivia', 12, '1');
INSERT INTO `tcomunas` VALUES (235, 'Lanco', 'Valdivia', 12, '1');
INSERT INTO `tcomunas` VALUES (236, 'Los Lagos', 'Valdivia', 12, '1');
INSERT INTO `tcomunas` VALUES (237, 'Máfil', 'Valdivia', 12, '1');
INSERT INTO `tcomunas` VALUES (238, 'Mariquina', 'Valdivia', 12, '1');
INSERT INTO `tcomunas` VALUES (239, 'Paillaco', 'Valdivia', 12, '1');
INSERT INTO `tcomunas` VALUES (240, 'Panguipulli', 'Valdivia', 12, '1');
INSERT INTO `tcomunas` VALUES (241, 'La Unión', 'Ranco', 12, '1');
INSERT INTO `tcomunas` VALUES (242, 'Futrono', 'Ranco', 12, '1');
INSERT INTO `tcomunas` VALUES (243, 'Lago Ranc', 'Ranco', 12, '1');
INSERT INTO `tcomunas` VALUES (244, 'Río Bueno', 'Ranco', 12, '1');
INSERT INTO `tcomunas` VALUES (245, 'Puerto Montt', 'Llanquihue', 13, '1');
INSERT INTO `tcomunas` VALUES (246, 'Calbuco', 'Llanquihue', 13, '1');
INSERT INTO `tcomunas` VALUES (247, 'Cochamó', 'Llanquihue', 13, '1');
INSERT INTO `tcomunas` VALUES (248, 'Fresia', 'Llanquihue', 13, '1');
INSERT INTO `tcomunas` VALUES (249, 'Frutillar', 'Llanquihue', 13, '1');
INSERT INTO `tcomunas` VALUES (250, 'Los Muermos', 'Llanquihue', 13, '1');
INSERT INTO `tcomunas` VALUES (251, 'Llanquihue', 'Llanquihue', 13, '1');
INSERT INTO `tcomunas` VALUES (252, 'Maullín', 'Llanquihue', 13, '1');
INSERT INTO `tcomunas` VALUES (253, 'Puerto Varas', 'Llanquihue', 13, '1');
INSERT INTO `tcomunas` VALUES (254, 'Castro', 'Chiloé', 13, '1');
INSERT INTO `tcomunas` VALUES (255, 'Ancud', 'Chiloé', 13, '1');
INSERT INTO `tcomunas` VALUES (256, 'Chonchi', 'Chiloé', 13, '1');
INSERT INTO `tcomunas` VALUES (257, 'Curaco de Vélez', 'Chiloé', 13, '1');
INSERT INTO `tcomunas` VALUES (258, 'Dalcahue', 'Chiloé', 13, '1');
INSERT INTO `tcomunas` VALUES (259, 'Puqueldón', 'Chiloé', 13, '1');
INSERT INTO `tcomunas` VALUES (260, 'Queilén', 'Chiloé', 13, '1');
INSERT INTO `tcomunas` VALUES (261, 'Quellón', 'Chiloé', 13, '1');
INSERT INTO `tcomunas` VALUES (262, 'Quemchi', 'Chiloé', 13, '1');
INSERT INTO `tcomunas` VALUES (263, 'Quinchao', 'Chiloé', 13, '1');
INSERT INTO `tcomunas` VALUES (264, 'Osorno', 'Osorno', 13, '1');
INSERT INTO `tcomunas` VALUES (265, 'Puerto Octay', 'Osorno', 13, '1');
INSERT INTO `tcomunas` VALUES (266, 'Purranque', 'Osorno', 13, '1');
INSERT INTO `tcomunas` VALUES (267, 'Puyehue', 'Osorno', 13, '1');
INSERT INTO `tcomunas` VALUES (268, 'Río Negro', 'Osorno', 13, '1');
INSERT INTO `tcomunas` VALUES (269, 'San Juan de la Costa', 'Osorno', 13, '1');
INSERT INTO `tcomunas` VALUES (270, 'San Pablo', 'Osorno', 13, '1');
INSERT INTO `tcomunas` VALUES (271, 'Chaitén', 'Palena', 13, '1');
INSERT INTO `tcomunas` VALUES (272, 'Futaleufú	', 'Palena', 13, '1');
INSERT INTO `tcomunas` VALUES (273, 'Hualaihué', 'Palena', 13, '1');
INSERT INTO `tcomunas` VALUES (274, 'Palena', 'Palena', 13, '1');
INSERT INTO `tcomunas` VALUES (275, 'Coyhaique', 'Coyhaique', 14, '1');
INSERT INTO `tcomunas` VALUES (276, 'Lago Verde', 'Coyhaique', 14, '1');
INSERT INTO `tcomunas` VALUES (277, 'Aysén', 'Aysén', 14, '1');
INSERT INTO `tcomunas` VALUES (278, 'Cisnes', 'Aysén', 14, '1');
INSERT INTO `tcomunas` VALUES (279, 'Guaitecas', 'Aysén', 14, '1');
INSERT INTO `tcomunas` VALUES (280, 'Cochrane', 'Capitán Prat', 14, '1');
INSERT INTO `tcomunas` VALUES (281, 'OHiggins', 'Capitán Pra', 14, '1');
INSERT INTO `tcomunas` VALUES (282, 'Tortel', 'Capitán Prat', 14, '1');
INSERT INTO `tcomunas` VALUES (283, 'Chile Chico', 'General Carrera', 14, '1');
INSERT INTO `tcomunas` VALUES (284, 'Río Ibáñez', 'General Carrera', 14, '1');
INSERT INTO `tcomunas` VALUES (285, 'Punta Arenas', 'Magallanes', 15, '1');
INSERT INTO `tcomunas` VALUES (286, 'Laguna Blanca', 'Magallanes', 15, '1');
INSERT INTO `tcomunas` VALUES (287, 'Río Verde', 'Magallanes', 15, '1');
INSERT INTO `tcomunas` VALUES (288, 'San Gregorio', 'Magallanes', 15, '1');
INSERT INTO `tcomunas` VALUES (289, 'Cabo de Hornos', 'Antártica Chilena', 15, '1');
INSERT INTO `tcomunas` VALUES (290, 'Antártica', 'Antártica Chilena', 15, '1');
INSERT INTO `tcomunas` VALUES (291, 'Porvenir', 'Tierra del Fuego', 15, '1');
INSERT INTO `tcomunas` VALUES (292, 'Primavera', 'Tierra del Fuego', 15, '1');
INSERT INTO `tcomunas` VALUES (293, 'Timaukel', 'Tierra del Fuego', 15, '1');
INSERT INTO `tcomunas` VALUES (294, 'Natales', 'Última Esperanza', 15, '1');
INSERT INTO `tcomunas` VALUES (295, 'Torres del Paine', 'Última Esperanza', 15, '1');
INSERT INTO `tcomunas` VALUES (296, 'LAS CONDES', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (298, 'ESTACIÓN CENTRAL', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (299, 'MAIPÚ', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (300, 'CERRILLOS', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (301, 'Cerro Navia', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (302, 'Conchalí', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (303, 'El Bosque', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (304, 'Huechuraba', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (305, 'Independencia', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (306, 'La Florida', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (307, 'La Granja', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (308, 'La Pintana', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (309, 'La Reina', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (310, 'Lo Barnechea', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (311, 'Lo Espejo', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (312, 'Lo Prado', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (313, 'Macul', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (314, 'Ñuñoa', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (315, 'Pedro Aguirre Cerda', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (316, 'Peñalolén', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (317, 'Providencia', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (318, 'Pudahuel', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (319, 'Quilicura', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (320, 'Quinta Normal', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (321, 'Recoleta', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (322, 'Renca', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (323, 'San Joaquín', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (324, 'San Miguel', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (325, 'San Ramón', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (326, 'Vitacura', 'Santiago', 7, '1');
INSERT INTO `tcomunas` VALUES (327, 'Puente Alto', 'Cordillera', 7, '1');
INSERT INTO `tcomunas` VALUES (328, 'Pirque', 'Cordillera', 7, '1');
INSERT INTO `tcomunas` VALUES (329, 'San José de Maipo', 'Cordillera', 7, '1');
INSERT INTO `tcomunas` VALUES (330, 'Colina', 'Chacabuco', 7, '1');
INSERT INTO `tcomunas` VALUES (331, 'Lampa', 'Chacabuco', 7, '1');
INSERT INTO `tcomunas` VALUES (332, 'Til Til', 'Chacabuco', 7, '1');
INSERT INTO `tcomunas` VALUES (333, 'San Bernardo', 'Maipo', 7, '1');
INSERT INTO `tcomunas` VALUES (334, 'Buin', 'Maipo', 7, '1');
INSERT INTO `tcomunas` VALUES (335, 'Calera de Tango', 'Maipo', 7, '1');
INSERT INTO `tcomunas` VALUES (336, 'Paine', 'Maipo', 7, '1');
INSERT INTO `tcomunas` VALUES (337, 'Melipilla', 'Melipilla', 7, '1');
INSERT INTO `tcomunas` VALUES (338, 'Alhué', 'Melipilla', 7, '1');
INSERT INTO `tcomunas` VALUES (339, 'Curacaví', 'Melipilla', 7, '1');
INSERT INTO `tcomunas` VALUES (340, 'María Pinto', 'Melipilla', 7, '1');
INSERT INTO `tcomunas` VALUES (341, 'San Pedro', 'Melipilla', 7, '1');
INSERT INTO `tcomunas` VALUES (342, 'Talagante', 'Talagante', 7, '1');
INSERT INTO `tcomunas` VALUES (343, 'El Monte', 'Talagante', 7, '1');
INSERT INTO `tcomunas` VALUES (344, 'Isla de Maipo', 'Talagante', 7, '1');
INSERT INTO `tcomunas` VALUES (345, 'Padre Hurtado', 'Talagante', 7, '1');
INSERT INTO `tcomunas` VALUES (346, 'Peñaflor', 'Talagante', 7, '1');
INSERT INTO `tcomunas` VALUES (347, 'San Vicente', 'Cachapoal', 8, '1');
INSERT INTO `tcomunas` VALUES (348, 'Pichilemu', 'Cardenal Caro', 8, '1');

-- ----------------------------
-- Table structure for tpersonas
-- ----------------------------
DROP TABLE IF EXISTS `tpersonas`;
CREATE TABLE `tpersonas`  (
  `idpersona` int NOT NULL AUTO_INCREMENT,
  `nacionalidad` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rut` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apellido` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sexo` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `edo_civil` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fecha_naci` date NULL DEFAULT NULL,
  `direccion` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel_mob` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel_fijo` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `correo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `estatus` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpersona`) USING BTREE,
  UNIQUE INDEX `rut`(`rut`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tpersonas
-- ----------------------------
INSERT INTO `tpersonas` VALUES (1, 'E', '26.092.000-6', 'Juslain', 'Belizaire', 'M', NULL, '1996-12-29', 'Queilen #5832', '932921319', NULL, 'hlain2000@gmail.com', '1');
INSERT INTO `tpersonas` VALUES (13, NULL, '34028648', 'JULIO', 'IBAÑEZ', 'M', NULL, NULL, NULL, NULL, NULL, '', '1');
INSERT INTO `tpersonas` VALUES (14, NULL, '48186084', 'SONIA', 'MADARIAGA', 'F', NULL, NULL, NULL, NULL, NULL, '', '1');
INSERT INTO `tpersonas` VALUES (15, NULL, '138290840', 'MARIA  VERONICA', 'BENAVENTE', 'F', NULL, NULL, NULL, NULL, NULL, '', '1');
INSERT INTO `tpersonas` VALUES (16, NULL, '120619780', 'PATRICIO', 'PICERO', 'M', NULL, NULL, NULL, NULL, NULL, '', '1');
INSERT INTO `tpersonas` VALUES (17, NULL, '20430033K', 'CONSTANZA', 'DEL VALLE', 'F', NULL, NULL, NULL, NULL, NULL, '', '1');
INSERT INTO `tpersonas` VALUES (18, NULL, '26200602-6', 'Rosa', 'Daniella', NULL, NULL, NULL, NULL, NULL, NULL, 'rose@io.cl', '1');

-- ----------------------------
-- Table structure for tregiones
-- ----------------------------
DROP TABLE IF EXISTS `tregiones`;
CREATE TABLE `tregiones`  (
  `idregion` smallint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `capital` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estatus` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`idregion`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tregiones
-- ----------------------------
INSERT INTO `tregiones` VALUES (1, 'ARICA Y PARINACOTA', 'Arica', '1');
INSERT INTO `tregiones` VALUES (2, 'TARAPACÁ', 'Iquique', '1');
INSERT INTO `tregiones` VALUES (3, 'ANTOFAGASTA', 'Antofagasta', '1');
INSERT INTO `tregiones` VALUES (4, 'ATACAMA', ' Copiapó.', '1');
INSERT INTO `tregiones` VALUES (5, 'COQUIMBO', 'La Serena', '1');
INSERT INTO `tregiones` VALUES (6, 'VALPARAÍSO', 'VALPARAÍSO', '1');
INSERT INTO `tregiones` VALUES (7, 'METROPOLITANA DE SANTIAGO', 'Santiago', '1');
INSERT INTO `tregiones` VALUES (8, 'LIBERTADOR GENERAL BERNARDO O HIGGINS', 'Rancagua', '1');
INSERT INTO `tregiones` VALUES (9, 'MAULE', 'Talca', '1');
INSERT INTO `tregiones` VALUES (10, 'BIOBÍO', 'CONCEPCIÒN', '1');
INSERT INTO `tregiones` VALUES (11, 'LA ARAUCANÍA', 'TEMUCO', '1');
INSERT INTO `tregiones` VALUES (12, 'LOS RÍOS', 'VALDIVIA', '1');
INSERT INTO `tregiones` VALUES (13, 'LOS LAGOS', 'PUERTO MONTT', '1');
INSERT INTO `tregiones` VALUES (14, 'AYSÉN DEL GENERAL CARLOS IBÁÑEZ DEL CAMPO', 'Coyhaique', '1');
INSERT INTO `tregiones` VALUES (15, 'MAGALLANES Y DE LA ANTÁRTICA CHILENA', 'Punta Arenas', '1');
INSERT INTO `tregiones` VALUES (16, 'Ñuble', 'Chillán', '1');

-- ----------------------------
-- Table structure for tvotantes
-- ----------------------------
DROP TABLE IF EXISTS `tvotantes`;
CREATE TABLE `tvotantes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_persona` int NULL DEFAULT NULL,
  `id_comuna` smallint NULL DEFAULT NULL,
  `id_candidato` int NULL DEFAULT NULL,
  `medios` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `estatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1',
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_persona`(`id_persona`) USING BTREE,
  INDEX `id_candidato`(`id_candidato`) USING BTREE,
  INDEX `id_comuna`(`id_comuna`) USING BTREE,
  CONSTRAINT `tvotantes_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `tpersonas` (`idpersona`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `tvotantes_ibfk_2` FOREIGN KEY (`id_candidato`) REFERENCES `tcandidatos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `tvotantes_ibfk_3` FOREIGN KEY (`id_comuna`) REFERENCES `tcomunas` (`idcomuna`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tvotantes
-- ----------------------------
INSERT INTO `tvotantes` VALUES (1, 18, 300, 5, 'Web  TV', '1', '2023-06-18 22:00:12', NULL);

SET FOREIGN_KEY_CHECKS = 1;
