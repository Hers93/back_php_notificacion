/*
 Navicat Premium Data Transfer

 Source Server         : localhost_5432
 Source Server Type    : PostgreSQL
 Source Server Version : 120011 (120011)
 Source Host           : localhost:5432
 Source Catalog        : Notifications
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 120011 (120011)
 File Encoding         : 65001

 Date: 13/09/2023 15:33:00
*/


-- ----------------------------
-- Sequence structure for Categoria_idCategoria_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Categoria_idCategoria_seq";
CREATE SEQUENCE "public"."Categoria_idCategoria_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for NotificacionUsuario_idNotificacionUsuario_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."NotificacionUsuario_idNotificacionUsuario_seq";
CREATE SEQUENCE "public"."NotificacionUsuario_idNotificacionUsuario_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for UsuarioCategoria_idUsuarioCategoria_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."UsuarioCategoria_idUsuarioCategoria_seq";
CREATE SEQUENCE "public"."UsuarioCategoria_idUsuarioCategoria_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for Usuarios_idUsuario_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Usuarios_idUsuario_seq";
CREATE SEQUENCE "public"."Usuarios_idUsuario_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for Categoria
-- ----------------------------
DROP TABLE IF EXISTS "public"."Categoria";
CREATE TABLE "public"."Categoria" (
  "idCategoria" int4 NOT NULL DEFAULT nextval('"Categoria_idCategoria_seq"'::regclass),
  "NombreCategoria" text COLLATE "pg_catalog"."default",
  "Activo" int4 DEFAULT 0,
  "UsuarioCreacion" varchar(50) COLLATE "pg_catalog"."default" DEFAULT "current_user"(),
  "UsuarioModificacion" varchar(50) COLLATE "pg_catalog"."default" DEFAULT "current_user"(),
  "FechaCreacion" timestamp(6) DEFAULT now(),
  "FechaModificacion" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of Categoria
-- ----------------------------
INSERT INTO "public"."Categoria" VALUES (1, 'Deportes', 1, 'postgres', 'postgres', '2023-09-12 13:44:25.06733', '2023-09-12 13:44:25.06733');
INSERT INTO "public"."Categoria" VALUES (2, 'Finanzas', 1, 'postgres', 'postgres', '2023-09-12 13:44:25.06733', '2023-09-12 13:44:25.06733');
INSERT INTO "public"."Categoria" VALUES (3, 'Peliculas', 1, 'postgres', 'postgres', '2023-09-12 13:44:25.06733', '2023-09-12 13:44:25.06733');

-- ----------------------------
-- Table structure for NotificacionUsuario
-- ----------------------------
DROP TABLE IF EXISTS "public"."NotificacionUsuario";
CREATE TABLE "public"."NotificacionUsuario" (
  "idNotificacionUsuario" int4 NOT NULL DEFAULT nextval('"NotificacionUsuario_idNotificacionUsuario_seq"'::regclass),
  "idCategoria" int4,
  "idUsuario" int4,
  "idNotificacion" int4,
  "Titulo" text COLLATE "pg_catalog"."default",
  "Mensaje" text COLLATE "pg_catalog"."default",
  "UsuarioCreacion" varchar(50) COLLATE "pg_catalog"."default" DEFAULT "current_user"(),
  "UsuarioModificacion" varchar(50) COLLATE "pg_catalog"."default" DEFAULT "current_user"(),
  "FechaCreacion" timestamp(6) DEFAULT now(),
  "FechaModificacion" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of NotificacionUsuario
-- ----------------------------
INSERT INTO "public"."NotificacionUsuario" VALUES (1, 1, 1, 1, 'eqwewq', 'wqeqwewqe', 'postgres', 'postgres', '2023-09-13 15:37:08.132276', '2023-09-13 15:37:08.132276');
INSERT INTO "public"."NotificacionUsuario" VALUES (2, NULL, NULL, NULL, NULL, NULL, 'postgres', 'postgres', '2023-09-13 16:03:47.638918', '2023-09-13 16:03:47.638918');
INSERT INTO "public"."NotificacionUsuario" VALUES (3, NULL, NULL, NULL, NULL, NULL, 'postgres', 'postgres', '2023-09-13 16:17:56.697362', '2023-09-13 16:17:56.697362');
INSERT INTO "public"."NotificacionUsuario" VALUES (4, NULL, NULL, NULL, NULL, NULL, 'postgres', 'postgres', '2023-09-13 16:18:36.549208', '2023-09-13 16:18:36.549208');
INSERT INTO "public"."NotificacionUsuario" VALUES (5, 1, 1, 1, 'eqwewq', 'wqeqwewqe', 'postgres', 'postgres', '2023-09-13 16:21:00.198608', '2023-09-13 16:21:00.198608');
INSERT INTO "public"."NotificacionUsuario" VALUES (6, 1, 1, 1, 'NOTIFICATION', 'EMAIL', 'postgres', 'postgres', '2023-09-13 16:25:11.483717', '2023-09-13 16:25:11.483717');
INSERT INTO "public"."NotificacionUsuario" VALUES (7, 2, 1, 1, 'NOTIFICATION', 'push', 'postgres', 'postgres', '2023-09-13 16:26:39.052172', '2023-09-13 16:26:39.052172');
INSERT INTO "public"."NotificacionUsuario" VALUES (8, 1, 1, 1, 'NOTIFICATION', 'ewqewq', 'postgres', 'postgres', '2023-09-13 16:28:09.383014', '2023-09-13 16:28:09.383014');
INSERT INTO "public"."NotificacionUsuario" VALUES (9, 1, 2, 2, 'NOTIFICATION321', '312312', 'postgres', 'postgres', '2023-09-13 16:28:23.905433', '2023-09-13 16:28:23.905433');

-- ----------------------------
-- Table structure for UsuarioCategoria
-- ----------------------------
DROP TABLE IF EXISTS "public"."UsuarioCategoria";
CREATE TABLE "public"."UsuarioCategoria" (
  "idUsuarioCategoria" int4 NOT NULL DEFAULT nextval('"UsuarioCategoria_idUsuarioCategoria_seq"'::regclass),
  "idUsuario" int4,
  "idCategoria" int4,
  "UsuarioCreacion" varchar(50) COLLATE "pg_catalog"."default" DEFAULT "current_user"(),
  "UsuarioModificacion" varchar(50) COLLATE "pg_catalog"."default" DEFAULT "current_user"(),
  "FechaCreacion" timestamp(6) DEFAULT now(),
  "FechaModificacion" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of UsuarioCategoria
-- ----------------------------
INSERT INTO "public"."UsuarioCategoria" VALUES (1, 1, 1, 'postgres', 'postgres', '2023-09-12 16:26:40.345132', '2023-09-12 16:26:40.345132');
INSERT INTO "public"."UsuarioCategoria" VALUES (2, 1, 2, 'postgres', 'postgres', '2023-09-12 16:28:21.031575', '2023-09-12 16:28:21.031575');
INSERT INTO "public"."UsuarioCategoria" VALUES (3, 1, 3, 'postgres', 'postgres', '2023-09-12 16:28:21.031575', '2023-09-12 16:28:21.031575');
INSERT INTO "public"."UsuarioCategoria" VALUES (4, 2, 1, 'postgres', 'postgres', '2023-09-12 16:28:21.031575', '2023-09-12 16:28:21.031575');
INSERT INTO "public"."UsuarioCategoria" VALUES (5, 2, 3, 'postgres', 'postgres', '2023-09-12 16:28:21.031575', '2023-09-12 16:28:21.031575');
INSERT INTO "public"."UsuarioCategoria" VALUES (6, 3, 2, 'postgres', 'postgres', '2023-09-12 16:28:21.031575', '2023-09-12 16:28:21.031575');
INSERT INTO "public"."UsuarioCategoria" VALUES (7, 4, 1, 'postgres', 'postgres', '2023-09-12 16:28:21.031575', '2023-09-12 16:28:21.031575');
INSERT INTO "public"."UsuarioCategoria" VALUES (8, 4, 2, 'postgres', 'postgres', '2023-09-12 16:28:21.031575', '2023-09-12 16:28:21.031575');
INSERT INTO "public"."UsuarioCategoria" VALUES (9, 4, 3, 'postgres', 'postgres', '2023-09-12 16:28:21.031575', '2023-09-12 16:28:21.031575');
INSERT INTO "public"."UsuarioCategoria" VALUES (10, 4, 3, 'postgres', 'postgres', '2023-09-12 16:28:21.031575', '2023-09-12 16:28:21.031575');
INSERT INTO "public"."UsuarioCategoria" VALUES (11, 5, 3, 'postgres', 'postgres', '2023-09-12 23:27:04.875886', '2023-09-12 23:27:04.875886');

-- ----------------------------
-- Table structure for Usuarios
-- ----------------------------
DROP TABLE IF EXISTS "public"."Usuarios";
CREATE TABLE "public"."Usuarios" (
  "idUsuario" int4 NOT NULL DEFAULT nextval('"Usuarios_idUsuario_seq"'::regclass),
  "Nombre" varchar(250) COLLATE "pg_catalog"."default",
  "ApellidoPaterno" varchar(250) COLLATE "pg_catalog"."default",
  "ApellidoMaterno" varchar(250) COLLATE "pg_catalog"."default",
  "NumeroTelefono" varchar(50) COLLATE "pg_catalog"."default",
  "UsuarioCreacion" varchar(50) COLLATE "pg_catalog"."default" DEFAULT "current_user"(),
  "UsuarioModificacion" varchar(50) COLLATE "pg_catalog"."default" DEFAULT "current_user"(),
  "FechaCreacion" timestamp(6) DEFAULT now(),
  "FechaModificacion" timestamp(6) DEFAULT now(),
  "Email" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Usuarios
-- ----------------------------
INSERT INTO "public"."Usuarios" VALUES (1, 'Rocio', 'Gasca', 'Renteria', '4611800743', 'postgres', 'postgres', '2023-09-12 16:20:31.018905', '2023-09-12 16:20:31.018905', 'correo1@gmail.com');
INSERT INTO "public"."Usuarios" VALUES (2, 'Fernando', 'Mancera', 'Laguna', '4611800727', 'postgres', 'postgres', '2023-09-12 16:20:31.018905', '2023-09-12 16:20:31.018905', 'correo4@gmail.com');
INSERT INTO "public"."Usuarios" VALUES (3, 'Herson', 'Mancera', 'Gasca', '4611800741', 'postgres', 'postgres', '2023-09-12 16:20:31.018905', '2023-09-12 16:20:31.018905', 'correo3@gmail.com');
INSERT INTO "public"."Usuarios" VALUES (4, 'Tania', 'Lopez', 'Gasca', '4611810747', 'postgres', 'postgres', '2023-09-12 16:20:31.018905', '2023-09-12 16:20:31.018905', 'correo2@gmail.com');
INSERT INTO "public"."Usuarios" VALUES (5, 'Luis', 'Mancera', 'Vega', '4611200747', 'postgres', 'postgres', '2023-09-12 16:20:31.018905', '2023-09-12 16:20:31.018905', 'Correo1@gmail.com');

-- ----------------------------
-- Function structure for insertNotification_usuario
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insertNotification_usuario"("usern" json);
CREATE OR REPLACE FUNCTION "public"."insertNotification_usuario"("usern" json)
  RETURNS "pg_catalog"."bool" AS $BODY$
	DECLARE
	BEGIN
		INSERT INTO "NotificacionUsuario"("idCategoria","idUsuario" ,"idNotificacion" ,"Titulo","Mensaje")
		VALUES (
				CAST(userN->>'idCategoria' AS INTEGER),
				CAST(userN->>'idUsuario' AS INTEGER),
				CAST(userN->>'idNotificacion' AS INTEGER),
				CAST(userN->>'Titulo' AS text),
				CAST(userN->>'Mensaje' AS text)
			) ;
			RETURN TRUE;
	END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Categoria_idCategoria_seq"
OWNED BY "public"."Categoria"."idCategoria";
SELECT setval('"public"."Categoria_idCategoria_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."NotificacionUsuario_idNotificacionUsuario_seq"
OWNED BY "public"."NotificacionUsuario"."idNotificacionUsuario";
SELECT setval('"public"."NotificacionUsuario_idNotificacionUsuario_seq"', 9, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."UsuarioCategoria_idUsuarioCategoria_seq"
OWNED BY "public"."UsuarioCategoria"."idUsuarioCategoria";
SELECT setval('"public"."UsuarioCategoria_idUsuarioCategoria_seq"', 11, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Usuarios_idUsuario_seq"
OWNED BY "public"."Usuarios"."idUsuario";
SELECT setval('"public"."Usuarios_idUsuario_seq"', 5, true);

-- ----------------------------
-- Primary Key structure for table Categoria
-- ----------------------------
ALTER TABLE "public"."Categoria" ADD CONSTRAINT "pk_idCategoria_categoria" PRIMARY KEY ("idCategoria");

-- ----------------------------
-- Primary Key structure for table NotificacionUsuario
-- ----------------------------
ALTER TABLE "public"."NotificacionUsuario" ADD CONSTRAINT "pk_idNotificacionUsuario" PRIMARY KEY ("idNotificacionUsuario");

-- ----------------------------
-- Primary Key structure for table UsuarioCategoria
-- ----------------------------
ALTER TABLE "public"."UsuarioCategoria" ADD CONSTRAINT "pk_idUsuarioCategoria" PRIMARY KEY ("idUsuarioCategoria");

-- ----------------------------
-- Primary Key structure for table Usuarios
-- ----------------------------
ALTER TABLE "public"."Usuarios" ADD CONSTRAINT "pk_idUsuario_Usuario" PRIMARY KEY ("idUsuario");

-- ----------------------------
-- Foreign Keys structure for table UsuarioCategoria
-- ----------------------------
ALTER TABLE "public"."UsuarioCategoria" ADD CONSTRAINT "fk_idCategoria_Categoria" FOREIGN KEY ("idCategoria") REFERENCES "public"."Categoria" ("idCategoria") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."UsuarioCategoria" ADD CONSTRAINT "fk_idUsuario_Usuario" FOREIGN KEY ("idUsuario") REFERENCES "public"."Usuarios" ("idUsuario") ON DELETE NO ACTION ON UPDATE NO ACTION;
