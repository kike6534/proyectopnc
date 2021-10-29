/*
 Navicat Premium Data Transfer

 Source Server         : Sql Server
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Catalog        : db_pnc
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 28/10/2021 21:14:34
*/


-- ----------------------------
-- Table structure for tbl_actividades
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_actividades]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_actividades]
GO

CREATE TABLE [dbo].[tbl_actividades] (
  [id_actividad_pk] int  IDENTITY(1,1) NOT NULL,
  [nombre_actividad] varchar(100) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [descripcion] varchar(200) COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_actividades] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_arma
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_arma]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_arma]
GO

CREATE TABLE [dbo].[tbl_arma] (
  [id_arma ] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [marca] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [tipo] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [serie] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [modelo] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [calibre] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [balistica] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_arma] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_asig_pol_puesto
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_asig_pol_puesto]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_asig_pol_puesto]
GO

CREATE TABLE [dbo].[tbl_asig_pol_puesto] (
  [id_asig_pol_puesto] int  NOT NULL,
  [fk_oni_policial] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [fk_id_nivel_org_puest] int  NULL,
  [fecha_asig] date  NULL
)
GO

ALTER TABLE [dbo].[tbl_asig_pol_puesto] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_asig_uniforme
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_asig_uniforme]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_asig_uniforme]
GO

CREATE TABLE [dbo].[tbl_asig_uniforme] (
  [id_asig_uniforme_pol] int  NOT NULL,
  [fecha_entrega] date  NULL,
  [fk_oni_poli_recibe] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [fk_oni_poli_entrega] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_asig_uniforme] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_asig_vehi_delegacion
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_asig_vehi_delegacion]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_asig_vehi_delegacion]
GO

CREATE TABLE [dbo].[tbl_asig_vehi_delegacion] (
  [id_asig_vehi_delegacion] int  NOT NULL,
  [fecha_asig] datetime  NULL,
  [fk_numero_equipo] int  NULL,
  [fk_id_nivel_org] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_asig_vehi_delegacion] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_asignacion_actividad_operativo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_asignacion_actividad_operativo]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_asignacion_actividad_operativo]
GO

CREATE TABLE [dbo].[tbl_asignacion_actividad_operativo] (
  [id_asignacion_actividad_operativo_pk] int  IDENTITY(1,1) NOT NULL,
  [id_actividad_fk] int  NOT NULL,
  [fecha_realiza_actividad] datetime  NOT NULL,
  [hora_inicia_actividad_programada] datetime  NOT NULL,
  [hora_final_actividad_programada] datetime  NOT NULL,
  [hora_real_finaliza_actividad] datetime  NOT NULL,
  [observacion] varchar(200) COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_asignacion_actividad_operativo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_capacitaciones_cursos
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_capacitaciones_cursos]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_capacitaciones_cursos]
GO

CREATE TABLE [dbo].[tbl_capacitaciones_cursos] (
  [id_capacitaciones_cursos] int  NOT NULL,
  [tipo] int  NOT NULL,
  [descripcion] varchar(255) COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_capacitaciones_cursos] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_carrera_oficio
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_carrera_oficio]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_carrera_oficio]
GO

CREATE TABLE [dbo].[tbl_carrera_oficio] (
  [id_carrera_oficio] int  NOT NULL,
  [tipo] int  NOT NULL,
  [descripcion] varchar(255) COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_carrera_oficio] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_carrera_policial_terminada
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_carrera_policial_terminada]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_carrera_policial_terminada]
GO

CREATE TABLE [dbo].[tbl_carrera_policial_terminada] (
  [id_carrera_p_t] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [causa] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_carrera_policial_terminada] date  NULL,
  [fk_dui_policial] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_carrera_policial_terminada] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_datos_personales
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_datos_personales]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_datos_personales]
GO

CREATE TABLE [dbo].[tbl_datos_personales] (
  [dui_pk] varchar(10) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [nit] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [iss] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [nombre] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [apellido] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [tipo_sangre] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [estado_civil] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_nacimiento] date  NULL,
  [lugar_nacimiento] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [sexo] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [estatura] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [peso] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [foto_personal] image  NULL
)
GO

ALTER TABLE [dbo].[tbl_datos_personales] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_datos_personales
-- ----------------------------
INSERT INTO [dbo].[tbl_datos_personales]  VALUES (N'01668595-4', N'000-000000-000-0', N'00000', N'Marvin Aldair', N'Alfaro Ruedas', N'O-', N'Casado', N'2000-10-28', N'Colonia Lomas De apastepeque', N'M', N'1.81', N'85K', NULL)
GO


-- ----------------------------
-- Table structure for tbl_descrip_unifo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_descrip_unifo]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_descrip_unifo]
GO

CREATE TABLE [dbo].[tbl_descrip_unifo] (
  [id_descrip_uniforme] int  NOT NULL,
  [nombre] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [tipo] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_descrip_unifo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_detalle_accesorios
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_detalle_accesorios]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_detalle_accesorios]
GO

CREATE TABLE [dbo].[tbl_detalle_accesorios] (
  [id_detalle_accesorios] int  NOT NULL,
  [cantidad] int  NULL,
  [num_serie] varchar(8) COLLATE Modern_Spanish_CI_AS  NULL,
  [fk_descrip_unifo_pol] int  NULL,
  [fk_asig_uniforme_pol] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_detalle_accesorios] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_detalle_estado
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_detalle_estado]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_detalle_estado]
GO

CREATE TABLE [dbo].[tbl_detalle_estado] (
  [iddetalleestado] int  NOT NULL,
  [fechaDeatlle] datetime  NOT NULL,
  [fk_numeroEquipo] int  NOT NULL,
  [fk_EstadoVehiculo] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_detalle_estado] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_detalle_placa_onis
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_detalle_placa_onis]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_detalle_placa_onis]
GO

CREATE TABLE [dbo].[tbl_detalle_placa_onis] (
  [id_detalle_placa] int  NOT NULL,
  [cantidad] int  NULL,
  [tipo_placa] int  NULL,
  [observacion] text COLLATE Modern_Spanish_CI_AS  NULL,
  [fk_id_descrip_unifo] int  NULL,
  [fk_id_asig_unifo_pol] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_detalle_placa_onis] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_detalle_unifo_pol
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_detalle_unifo_pol]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_detalle_unifo_pol]
GO

CREATE TABLE [dbo].[tbl_detalle_unifo_pol] (
  [id_detalle_uniforme] int  NOT NULL,
  [talla] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [codigo] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [fk_id_asig_uniforme_pol] int  NULL,
  [fk_id_descrip_unifor] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_detalle_unifo_pol] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_detallediscapacidad
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_detallediscapacidad]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_detallediscapacidad]
GO

CREATE TABLE [dbo].[tbl_detallediscapacidad] (
  [iddetallediscapacidad] varchar(255) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [duiagente] varchar(10) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [iddiscapacidad] varchar(255) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [Observacion] varchar(255) COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_detallediscapacidad] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_detallediscapacidad
-- ----------------------------
INSERT INTO [dbo].[tbl_detallediscapacidad]  VALUES (N'1', N'01668595-4', N'1', N'Nulas')
GO

INSERT INTO [dbo].[tbl_detallediscapacidad]  VALUES (N'2', N'01668595-4', N'2', N'Nulas')
GO

INSERT INTO [dbo].[tbl_detallediscapacidad]  VALUES (N'3', N'01668595-4', N'3', N'Nulas')
GO


-- ----------------------------
-- Table structure for tbl_discapacidad
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_discapacidad]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_discapacidad]
GO

CREATE TABLE [dbo].[tbl_discapacidad] (
  [iddiscapacidad] varchar(255) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [tipo_discapacidad] varchar(255) COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_discapacidad] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_discapacidad
-- ----------------------------
INSERT INTO [dbo].[tbl_discapacidad]  VALUES (N'1', N'Fisica')
GO

INSERT INTO [dbo].[tbl_discapacidad]  VALUES (N'2', N'Visual')
GO

INSERT INTO [dbo].[tbl_discapacidad]  VALUES (N'3', N'Psicosocial')
GO

INSERT INTO [dbo].[tbl_discapacidad]  VALUES (N'4', N'Intelectual')
GO

INSERT INTO [dbo].[tbl_discapacidad]  VALUES (N'5', N'Auditiva')
GO


-- ----------------------------
-- Table structure for tbl_enfermedades
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_enfermedades]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_enfermedades]
GO

CREATE TABLE [dbo].[tbl_enfermedades] (
  [id_enfermedad] int  NOT NULL,
  [nombre_enfermedad] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [tipo] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_enfermedades] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_especialidades
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_especialidades]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_especialidades]
GO

CREATE TABLE [dbo].[tbl_especialidades] (
  [id_especialidad] int  NOT NULL,
  [especialidad] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_especialidades] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_faltas
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_faltas]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_faltas]
GO

CREATE TABLE [dbo].[tbl_faltas] (
  [id_faltas] int  NOT NULL,
  [falta] varchar(100) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [tipo_falta_cometida] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_faltas] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_familiares
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_familiares]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_familiares]
GO

CREATE TABLE [dbo].[tbl_familiares] (
  [id_familiar] varchar(15) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [dui_familiar] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [parentesco] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [nombre] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [apellido] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [telefono] varchar(9) COLLATE Modern_Spanish_CI_AS  NULL,
  [fk_dui_policial] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_familiares] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_habilidad_tecnologica
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_habilidad_tecnologica]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_habilidad_tecnologica]
GO

CREATE TABLE [dbo].[tbl_habilidad_tecnologica] (
  [id_habilidad_tecnologica] int  NOT NULL,
  [descripcion] varchar(255) COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_habilidad_tecnologica] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_libro_entradas_salidas
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_libro_entradas_salidas]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_libro_entradas_salidas]
GO

CREATE TABLE [dbo].[tbl_libro_entradas_salidas] (
  [id_libro_entradas_salidas] int  IDENTITY(1,1) NOT NULL,
  [tipo] int  NULL,
  [fecha_marcaje] datetime  NULL,
  [hora_entrada_real] datetime  NULL,
  [hora_salida_real] datetime  NULL,
  [hora_regreso] datetime  NULL,
  [observacion_novedad] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_libro_entradas_salidas] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_licencia_arma
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_licencia_arma]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_licencia_arma]
GO

CREATE TABLE [dbo].[tbl_licencia_arma] (
  [ id_licencia_arma] int  NOT NULL,
  [numero_licencia] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [tipo_licencia] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_renovacion] date  NULL,
  [permiso] tinyint  NULL,
  [fk_dui_policial_licencia_arma] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_licencia_arma] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_licencia_conducir
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_licencia_conducir]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_licencia_conducir]
GO

CREATE TABLE [dbo].[tbl_licencia_conducir] (
  [id_licencia_conducir] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [numero_licencia] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [tipo_licencia] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_renovacion] date  NULL,
  [permiso] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [fk_dui_policial] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_licencia_conducir] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_modulo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_modulo]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_modulo]
GO

CREATE TABLE [dbo].[tbl_modulo] (
  [idmodulo] int  NOT NULL,
  [titulo] varchar(50) COLLATE Latin1_General_CI_AI  NULL,
  [descripcion] text COLLATE Latin1_General_CI_AI  NULL,
  [estado] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_modulo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_motivo_permiso
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_motivo_permiso]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_motivo_permiso]
GO

CREATE TABLE [dbo].[tbl_motivo_permiso] (
  [id_motivo_permiso] int  IDENTITY(1,1) NOT NULL,
  [motivos_permiso_con_goce_de_sueldo] varchar(150) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_motivo_permiso] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_movi_enfermedad
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movi_enfermedad]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movi_enfermedad]
GO

CREATE TABLE [dbo].[tbl_movi_enfermedad] (
  [id_movi_mi_enfermedad] int  NOT NULL,
  [fecha_deteccion] date  NULL,
  [enfermedad_vigente] tinyint  NULL,
  [url_img_enfermedad] bit  NULL,
  [fk_id_enfermedad] int  NULL,
  [fk_dui_policial] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_movi_enfermedad] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_movi_especialidad
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movi_especialidad]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movi_especialidad]
GO

CREATE TABLE [dbo].[tbl_movi_especialidad] (
  [id_movi_mi_especialidad] int  NOT NULL,
  [fk_dui_policia] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [fk_id_especialidad] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_movi_especialidad] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_movi_ingreso
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movi_ingreso]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movi_ingreso]
GO

CREATE TABLE [dbo].[tbl_movi_ingreso] (
  [id_movi_mi_ingreso] int  NOT NULL,
  [fecha_ingreso] date  NULL,
  [fk_dui_policial] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_movi_ingreso] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_movi_salario
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movi_salario]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movi_salario]
GO

CREATE TABLE [dbo].[tbl_movi_salario] (
  [id_movi_mi_salario] int  NOT NULL,
  [salario] float(53)  NULL,
  [fecha_salario] date  NULL,
  [fk_dui_policial] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_movi_salario] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_movimi_arma_asig
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movimi_arma_asig]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movimi_arma_asig]
GO

CREATE TABLE [dbo].[tbl_movimi_arma_asig] (
  [id_arma_asignada] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [fecha_asigna] date  NULL,
  [fk_dui_policial] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [fk_id_arma] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_movimi_arma_asig] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_movimi_asignacion_actividad_operativo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movimi_asignacion_actividad_operativo]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo]
GO

CREATE TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo] (
  [id_movimi_asignacion_actividad_operativo_pk] int  IDENTITY(1,1) NOT NULL,
  [id_asignacion_actividad_operativo_fk] int  NOT NULL,
  [dui_fk] varchar(10) COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_movimi_cap_cursos
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movimi_cap_cursos]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movimi_cap_cursos]
GO

CREATE TABLE [dbo].[tbl_movimi_cap_cursos] (
  [id_movimi_cap_cursos] int  NOT NULL,
  [fecha_inicio] datetime  NOT NULL,
  [fecha_finalizacion] datetime  NOT NULL,
  [fk_dui_policial] varchar(10) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [fk_id_capacitaciones_cursos] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_movimi_cap_cursos] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_movimi_habilidad_tec
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movimi_habilidad_tec]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movimi_habilidad_tec]
GO

CREATE TABLE [dbo].[tbl_movimi_habilidad_tec] (
  [id_movimi_hab_tec] int  NOT NULL,
  [fecha_registro] datetime  NOT NULL,
  [fk_dui_policial] varchar(10) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [fk_id_hab_tec] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_movimi_habilidad_tec] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_movimi_libro_entradas_salidas
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movimi_libro_entradas_salidas]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movimi_libro_entradas_salidas]
GO

CREATE TABLE [dbo].[tbl_movimi_libro_entradas_salidas] (
  [id_movimi_libro_entradas_salidas ] int  IDENTITY(1,1) NOT NULL,
  [fk_id_libro_entradas_salidas] int  NULL,
  [fk_dui] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_movimi_libro_entradas_salidas] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_movimi_promo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movimi_promo]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movimi_promo]
GO

CREATE TABLE [dbo].[tbl_movimi_promo] (
  [id_movimi_promocion] int  NOT NULL,
  [fk_dui_policial] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [fk_id_promocion] int  NULL,
  [fecha_registro] date  NULL
)
GO

ALTER TABLE [dbo].[tbl_movimi_promo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_movimi_sansiones
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movimi_sansiones]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movimi_sansiones]
GO

CREATE TABLE [dbo].[tbl_movimi_sansiones] (
  [id_movimi_sansion] int  NOT NULL,
  [desde] datetime  NOT NULL,
  [hasta] datetime  NOT NULL,
  [fk_id_sansion] int  NOT NULL,
  [fk_dui_policial] varchar(10) COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_movimi_sansiones] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_nilv_org
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_nilv_org]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_nilv_org]
GO

CREATE TABLE [dbo].[tbl_nilv_org] (
  [idNivelOrg] int  NOT NULL,
  [nombre] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [n1] int  NULL,
  [n2] int  NULL,
  [n3] int  NULL,
  [n4] int  NOT NULL,
  [tipoNivel] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_nilv_org] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_nilv_org
-- ----------------------------
INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'1', N'JEFATURA DELEGACION', N'1', N'0', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'2', N'UNIDAD DE INVESTIGACION
DISCIPLINARIA', N'1', N'1', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'3', N'SUBJEFATURA', N'2', N'0', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'4', N'SECCION DE INFORMACION Y
ESTADISTICAS POLICIALES', N'2', N'1', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'5', N'DEPARTAMENTO DE SEGURIDAD
PUBLICA URBANA', N'2', N'2', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'6', N'SECCION TRANSITO TERRESTRE', N'2', N'2', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'7', N'SECCION DE EMERGENCIAS 911', N'2', N'2', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'8', N'SECCION DE SEGURIDAD PUBLICA
URBANA', N'2', N'2', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'9', N'UNIMUJER ODAC', N'2', N'2', N'3', N'1', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'10', N'ODAC FAMILIA', N'2', N'2', N'3', N'2', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'11', N'SECCION DE SERVICIOS
EXTRAORDINARIOS', N'2', N'2', N'4', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'12', N'UNIDAD DE BARTOLINAS', N'2', N'2', N'4', N'1', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'13', N'UNIDAD DE CUSTODIA DE
VEHICULOS', N'2', N'2', N'4', N'2', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'14', N'DEPARTAMENTO DE AREAS
ESPECIALIZADAS OPERATIVAS', N'2', N'3', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'15', N'SECCION TACTICA OPERATIVA', N'2', N'3', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'16', N'SECCION DE ARMAS Y
EXPLOSIVOS', N'2', N'3', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'17', N'SECCION DE CUMPLIMIENTO A
DISPOSICIONES JUDICIALES', N'2', N'3', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'18', N'SECCION PROTECCION A
VICTIMAS Y TESTIGOS', N'2', N'3', N'4', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'19', N'DEPARTAMENTO DE
ADMINISTRACION', N'2', N'4', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'20', N'SECCION DE LOGISTICA E
INFRAESTRUCTURA', N'2', N'4', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'21', N'SECCION DE BIENESTAR
POLICIAL Y TALENTO HUMANO', N'2', N'4', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'22', N'SECCION DE SALIUD POLICIAL', N'2', N'4', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'23', N'SECCION DE FINANCIERA', N'2', N'4', N'4', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'24', N'SECCION DE TECNOLOGIA DE
INFORMACION Y COMUNICACIONES', N'2', N'4', N'5', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'25', N'DEPARTAMENTO DE
INVESTIGACIONES', N'2', N'5', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'26', N'SECCION DE DELITOS CONTRA LA
VIDA', N'2', N'5', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'27', N'SECCION DE DELITOS CONTRA LA
MUJER', N'2', N'5', N'1', N'1', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'28', N'SECCION DE DELITOS CONTRA EL
PATRIMONIO', N'2', N'5', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'29', N'SECCION DE DELITOS
GENERALES', N'2', N'5', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'30', N'SECCION DE ANTINARCOTICOS', N'2', N'5', N'4', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'31', N'SECCION DE POLICIA TECNICA Y
CIENTIFICA', N'2', N'5', N'5', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'32', N'SECCION DE TECNICA FORENSE', N'2', N'5', N'6', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'33', N'DEPARTAMENTO DE
INTELIGENCIA', N'2', N'6', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'34', N'SECCION DE RECOPILACION DE
INFORMACION', N'2', N'6', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'35', N'SECCION DE ANALISIS Y
PRODUCCION DE INTELIGENCIA', N'2', N'6', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'36', N'DEPARTAMENTO DE SEGURIDAD
PUBLICA RURAL', N'2', N'7', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'37', N'SECCION DE SEGURIDAD PUBLICA
RURAL', N'2', N'7', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'38', N'SECCION DE COMANDO
CONJUNTO', N'2', N'7', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'39', N'SECCION DE MEDIO AMBIENTE', N'2', N'7', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'40', N'SUBDELEGACION DE SAN
VICENTE', N'2', N'8', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'41', N'SUBDELEGACION DE VERAPAZ', N'2', N'9', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'42', N'PUESTO GUADALUPE', N'2', N'9', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'43', N'PUESTO DE TEPETITAN', N'2', N'9', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'44', N'PUESTO DE SAN CAYETANO
ISTEPEQUE', N'2', N'9', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'45', N'SUBDELEGACION DE
APASTEPEQUE', N'2', N'10', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'46', N'PUESTO SAN ILDEFONSO', N'2', N'10', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'47', N'PUESTO DE SAN ESTEBAN
CATARINA', N'2', N'10', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'48', N'PUESTO DE SAN JACINTO', N'2', N'10', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'49', N'PUESTO DE SANTA CLARA', N'2', N'10', N'4', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'50', N'PUESTO PUENTE CUSCATLAN', N'2', N'10', N'5', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'51', N'SUBDELEGACION DE TECOLUCA', N'2', N'11', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'52', N'PUESTO DE SAN NICOLAS
LEMPA', N'2', N'11', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'53', N'PUESTO DE SAN CARLOS LEMPA', N'2', N'11', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'54', N'PUESTO DE SANTA CRUZ
PORRILLO', N'2', N'11', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'55', N'SUBDELEGACION SAN
SEBASTIAN', N'2', N'12', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'56', N'PUESTO DE SANTO DOMINGO', N'2', N'12', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'57', N'PUESTO DE SAN LORENZO', N'2', N'12', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'58', N'SD-SVIC SECCION DE
INVESTIGACION DISCIPLINARIA', N'2', N'8', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'59', N'SD-VER SECCION DE
INVESTIGACION DISCIPLINARIA', N'2', N'9', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'60', N'SD-APAS SECCION DE
INVESTIGACION DISCIPLINARIA', N'2', N'10', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'61', N'SD-TEC SECCION DE
INVESTIGACION DISCIPLINARIA', N'2', N'11', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org]  VALUES (N'62', N'SD-SSEB SECCION DE
INVESTIGACION DISCIPLINARIA', N'2', N'12', N'1', N'0', NULL)
GO


-- ----------------------------
-- Table structure for tbl_nivel_academico
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_nivel_academico]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_nivel_academico]
GO

CREATE TABLE [dbo].[tbl_nivel_academico] (
  [id_nivel_academico] int  NOT NULL,
  [nivel_academico] int  NOT NULL,
  [fk_dui_policial] varchar(10) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [fk_id_carrera_oficio] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_nivel_academico] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_nivel_puest
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_nivel_puest]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_nivel_puest]
GO

CREATE TABLE [dbo].[tbl_nivel_puest] (
  [idNivelOrgPuesto] int  NOT NULL,
  [idNivelOrg] int  NULL,
  [idPuesto] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_nivel_puest] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_nivel_puest
-- ----------------------------
INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'1', N'1', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'2', N'1', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'3', N'1', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'4', N'1', N'4')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'5', N'1', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'6', N'1', N'6')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'7', N'1', N'7')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'8', N'2', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'9', N'2', N'8')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'10', N'2', N'9')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'11', N'2', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'12', N'3', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'13', N'3', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'14', N'3', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'15', N'3', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'16', N'3', N'4')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'17', N'4', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'18', N'4', N'10')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'19', N'4', N'11')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'20', N'4', N'12')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'21', N'5', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'22', N'5', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'23', N'5', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'24', N'5', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'25', N'6', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'26', N'6', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'27', N'6', N'13')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'28', N'6', N'14')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'29', N'6', N'15')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'30', N'6', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'31', N'6', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'32', N'6', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'33', N'6', N'18')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'34', N'7', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'35', N'7', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'36', N'7', N'15')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'37', N'7', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'38', N'7', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'39', N'7', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'40', N'7', N'18')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'41', N'8', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'42', N'8', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'43', N'8', N'15')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'44', N'8', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'45', N'8', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'46', N'8', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'47', N'8', N'18')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'48', N'8', N'19')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'49', N'9', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'50', N'9', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'51', N'9', N'20')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'52', N'10', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'53', N'10', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'54', N'10', N'20')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'55', N'11', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'56', N'11', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'57', N'11', N'21')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'58', N'12', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'59', N'12', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'60', N'12', N'22')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'61', N'12', N'23')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'62', N'13', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'63', N'13', N'22')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'64', N'14', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'65', N'14', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'66', N'14', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'67', N'14', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'68', N'15', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'69', N'15', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'70', N'15', N'24')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'71', N'16', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'72', N'16', N'25')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'73', N'16', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'74', N'17', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'75', N'17', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'76', N'17', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'77', N'18', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'78', N'18', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'79', N'18', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'80', N'19', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'81', N'19', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'82', N'19', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'83', N'19', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'84', N'20', N'18')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'85', N'20', N'15')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'86', N'20', N'26')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'87', N'20', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'88', N'21', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'89', N'21', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'90', N'21', N'28')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'91', N'22', N'29')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'92', N'22', N'30')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'93', N'22', N'31')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'94', N'22', N'32')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'95', N'22', N'33')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'96', N'22', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'97', N'22', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'98', N'23', N'34')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'99', N'23', N'35')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'100', N'23', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'101', N'24', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'102', N'25', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'103', N'25', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'104', N'25', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'105', N'25', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'106', N'26', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'107', N'26', N'36')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'108', N'26', N'37')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'109', N'27', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'200', N'27', N'36')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'201', N'27', N'37')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'202', N'28', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'203', N'28', N'36')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'204', N'28', N'37')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'205', N'29', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'206', N'29', N'36')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'207', N'29', N'37')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'208', N'30', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'209', N'30', N'36')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'210', N'30', N'37')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'211', N'31', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'212', N'31', N'36')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'213', N'31', N'37')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'214', N'32', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'215', N'32', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'216', N'32', N'36')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'217', N'32', N'37')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'218', N'33', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'219', N'33', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'220', N'33', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'221', N'33', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'222', N'34', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'223', N'34', N'38')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'224', N'35', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'225', N'35', N'38')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'226', N'35', N'39')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'227', N'36', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'228', N'36', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'229', N'36', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'230', N'36', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'231', N'37', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'232', N'37', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'233', N'37', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'234', N'38', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'235', N'38', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'236', N'38', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'237', N'39', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'238', N'39', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'239', N'39', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'240', N'40', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'241', N'40', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'242', N'40', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'243', N'40', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'244', N'40', N'4')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'245', N'40', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'246', N'40', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'247', N'41', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'248', N'41', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'249', N'41', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'250', N'41', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'251', N'41', N'4')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'252', N'41', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'253', N'41', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'254', N'45', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'255', N'45', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'256', N'45', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'257', N'45', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'258', N'45', N'4')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'259', N'45', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'260', N'45', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'261', N'51', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'262', N'51', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'263', N'51', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'264', N'51', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'265', N'51', N'4')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'266', N'51', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'267', N'51', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'268', N'55', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'269', N'55', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'270', N'55', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'271', N'55', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'272', N'55', N'4')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'273', N'55', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'274', N'55', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'275', N'58', N'8')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'276', N'58', N'9')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'277', N'59', N'8')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'278', N'59', N'9')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'279', N'60', N'8')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'280', N'60', N'9')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'281', N'61', N'8')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'282', N'61', N'9')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'283', N'62', N'8')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'284', N'62', N'9')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'285', N'42', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'286', N'42', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'287', N'42', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'288', N'42', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'289', N'43', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'290', N'43', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'291', N'43', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'292', N'43', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'293', N'44', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'294', N'44', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'295', N'44', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'296', N'44', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'297', N'46', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'298', N'46', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'299', N'46', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'300', N'46', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'301', N'47', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'302', N'47', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'303', N'47', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'304', N'47', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'305', N'48', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'306', N'48', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'307', N'48', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'308', N'48', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'309', N'49', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'310', N'49', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'311', N'49', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'312', N'49', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'313', N'50', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'314', N'50', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'315', N'50', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'316', N'50', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'317', N'52', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'318', N'52', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'319', N'52', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'320', N'52', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'321', N'53', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'322', N'53', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'323', N'53', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'324', N'53', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'325', N'54', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'326', N'54', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'327', N'54', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'328', N'54', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'329', N'56', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'330', N'56', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'331', N'56', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'332', N'56', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'333', N'57', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'334', N'57', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'335', N'57', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest]  VALUES (N'336', N'57', N'41')
GO


-- ----------------------------
-- Table structure for tbl_oni_policial
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_oni_policial]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_oni_policial]
GO

CREATE TABLE [dbo].[tbl_oni_policial] (
  [id_oni] varchar(10) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [fecha_asignacion] date  NULL,
  [estado] bit  NULL,
  [fk_dui_policial] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_oni_policial] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_oni_policial
-- ----------------------------
INSERT INTO [dbo].[tbl_oni_policial]  VALUES (N'1111', N'2021-10-28', N'1', N'01668595-4')
GO


-- ----------------------------
-- Table structure for tbl_permiso_con_sin_goce_sueldo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_permiso_con_sin_goce_sueldo]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo]
GO

CREATE TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] (
  [id_permiso_con_goce_sueldo] int  IDENTITY(1,1) NOT NULL,
  [fk_dui_solicitante] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [fk_dui_jefe_inmediato] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [fk_dui_jefe_inmediato_superior] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_inicio] datetime  NULL,
  [fecha_final] datetime  NULL,
  [aprobado] tinyint  NULL,
  [id_motivo_permiso] int  NULL,
  [imagen] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [observacion] varchar(150) COLLATE Modern_Spanish_CI_AS  NULL,
  [motivo] varchar(150) COLLATE Modern_Spanish_CI_AS  NULL,
  [fk_tipo_permiso] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_permisos
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_permisos]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_permisos]
GO

CREATE TABLE [dbo].[tbl_permisos] (
  [idpermiso] int  NOT NULL,
  [rolid] int  NULL,
  [moduloid] int  NULL,
  [leer] int  NULL,
  [escribir] int  NULL,
  [actualizar] int  NULL,
  [eliminar] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_permisos] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_promocion
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_promocion]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_promocion]
GO

CREATE TABLE [dbo].[tbl_promocion] (
  [id_promocion] int  NOT NULL,
  [anio_promocion] date  NULL,
  [numero_promocion] varchar(15) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_promocion] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_puesto
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_puesto]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_puesto]
GO

CREATE TABLE [dbo].[tbl_puesto] (
  [idPuesto] int  NOT NULL,
  [nombre] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_puesto] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_puesto
-- ----------------------------
INSERT INTO [dbo].[tbl_puesto]  VALUES (N'1', N'JEFATURA')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'2', N'MOTORISTA')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'3', N'SECRETARIA')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'4', N'COLABORADOR ADMINISTRATIVO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'5', N'APOYO TECNICO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'6', N'EQUIPO DE COMUNICACIONES')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'7', N'ARCHIVO CENTRAL PEREFERICO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'8', N'INSTRUCTORES DISCIPLINARIOS')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'9', N'SECRETARIO DE ACTUACIONES')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'10', N'ANALISTA ESTRETAGICO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'11', N'RECOLECTOR DE INFORMACION')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'12', N'OPERADOR DE RADIO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'13', N'INSPECCIONES DE TRANSITO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'14', N'DILIGENCIADORES DE TRANSITO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'15', N'APOYO ADMINISTRATIVO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'16', N'ATENCION AL PUBLICO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'17', N'POLICIA OPERATIVO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'18', N'POLICIA CON FUNCION ADMINISTRATIVA')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'19', N'POLICIA PROGRAMAS PREVENTIVOS')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'20', N'POLICIA DE ATENCION DE CASOS')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'21', N'POLICIA DE ATENCION')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'22', N'POLICIA CUSTODIO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'23', N'CHEQUEO CLINICO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'24', N'POLICIA TACTICO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'25', N'POLICIA TECNICO OPERATIVO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'26', N'OBRERO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'27', N'APOYO TECNICO ADMINISTRATIVO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'28', N'COORDINADOR DE FORMACION PROFESIONAL')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'29', N'MEDICO GENERAL')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'30', N'ODONTOLOGO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'31', N'PSICOLOGO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'32', N'TRABAJADOR SOCIAL')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'33', N'ENFERMERA')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'34', N'FONDO CIRCULANTE DE MONTO FIJO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'35', N'PAGADURIA AUXILIAR')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'36', N'INVESTIGADORES')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'37', N'DILIGENCIADORES')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'38', N'APOYO TECNICO OPERATIVO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'39', N'ANALISTA')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'40', N'PERSONAL OPERATIVO')
GO

INSERT INTO [dbo].[tbl_puesto]  VALUES (N'41', N'PERSONAL OPERATIVO CON FUNCION ADMINISTRATIVA')
GO


-- ----------------------------
-- Table structure for tbl_rol
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_rol]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_rol]
GO

CREATE TABLE [dbo].[tbl_rol] (
  [idrol] int  NOT NULL,
  [nombrerol] varchar(50) COLLATE Latin1_General_CI_AI  NULL,
  [descripcion] text COLLATE Latin1_General_CI_AI  NULL,
  [estado] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_rol] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_rol
-- ----------------------------
INSERT INTO [dbo].[tbl_rol]  VALUES (N'202110271', N'Administrador', N'Superadministrador', N'1')
GO

INSERT INTO [dbo].[tbl_rol]  VALUES (N'202110272', N'Delegacion', N'Rol de delegacion', N'1')
GO

INSERT INTO [dbo].[tbl_rol]  VALUES (N'202110273', N'Nuevo Rol', N'Nuevo rol', N'2')
GO

INSERT INTO [dbo].[tbl_rol]  VALUES (N'202110274', N'sfg', N'dfgh', N'0')
GO


-- ----------------------------
-- Table structure for tbl_sansiones
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_sansiones]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_sansiones]
GO

CREATE TABLE [dbo].[tbl_sansiones] (
  [id_sansiones] int  NOT NULL,
  [sansion] varchar(255) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [fk_id_faltas] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_sansiones] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_telefono
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_telefono]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_telefono]
GO

CREATE TABLE [dbo].[tbl_telefono] (
  [id_tel] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [numero_telefono] varchar(15) COLLATE Modern_Spanish_CI_AS  NULL,
  [tipo] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [fk_dui_policial] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_telefono] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_tipo_vehiculo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_tipo_vehiculo]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_tipo_vehiculo]
GO

CREATE TABLE [dbo].[tbl_tipo_vehiculo] (
  [idTipoVehiculo] int  NOT NULL,
  [tipoVehiculo] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_tipo_vehiculo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_usuario
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_usuario]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_usuario]
GO

CREATE TABLE [dbo].[tbl_usuario] (
  [idusuario] int  NOT NULL,
  [email_usuario] varchar(100) COLLATE Latin1_General_CI_AI  NULL,
  [contrasena] varchar(75) COLLATE Latin1_General_CI_AI  NULL,
  [fk_dui] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [token] varchar(100) COLLATE Latin1_General_CI_AI  NULL,
  [rolid] int  NULL,
  [datecreated] datetime  NULL,
  [estado] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_usuario] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tbl_vehiculo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_vehiculo]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_vehiculo]
GO

CREATE TABLE [dbo].[tbl_vehiculo] (
  [numero_equipo] int  NOT NULL,
  [placa] varchar(12) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [legalidad_vehiculo] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [funcion] varchar(35) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [anioVehiculo] varchar(4) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [fk_tipoVehiculo] int  NOT NULL,
  [situacionVehiculo] bit  NOT NULL,
  [estado] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_vehiculo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tblo_estado_vehiculo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblo_estado_vehiculo]') AND type IN ('U'))
	DROP TABLE [dbo].[tblo_estado_vehiculo]
GO

CREATE TABLE [dbo].[tblo_estado_vehiculo] (
  [idEstadoVehiculo] int  NOT NULL,
  [nombreEstado] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[tblo_estado_vehiculo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tipoNivelOrg
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoNivelOrg]') AND type IN ('U'))
	DROP TABLE [dbo].[tipoNivelOrg]
GO

CREATE TABLE [dbo].[tipoNivelOrg] (
  [idtipo] int  NOT NULL,
  [nombretipo] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tipoNivelOrg] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table tbl_actividades
-- ----------------------------
ALTER TABLE [dbo].[tbl_actividades] ADD CONSTRAINT [PK__tbl_acti__05041970E02F665F] PRIMARY KEY CLUSTERED ([id_actividad_pk])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_arma
-- ----------------------------
ALTER TABLE [dbo].[tbl_arma] ADD CONSTRAINT [PK__tbl_arma__8A8C4271086DCA34] PRIMARY KEY CLUSTERED ([id_arma ])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_asig_pol_puesto
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_pol_puesto] ADD CONSTRAINT [PK__tbl_asig__B51C8746ED4BF87A] PRIMARY KEY CLUSTERED ([id_asig_pol_puesto])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_asig_uniforme
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_uniforme] ADD CONSTRAINT [PK__tbl_asig__666B9B956B8EDDC6] PRIMARY KEY CLUSTERED ([id_asig_uniforme_pol])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_asig_vehi_delegacion
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_vehi_delegacion] ADD CONSTRAINT [PK__tbl_asig__67DAC62DBB431603] PRIMARY KEY CLUSTERED ([id_asig_vehi_delegacion])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_asignacion_actividad_operativo
-- ----------------------------
ALTER TABLE [dbo].[tbl_asignacion_actividad_operativo] ADD CONSTRAINT [PK__tbl_asig__7FBDABA5F5D6008A] PRIMARY KEY CLUSTERED ([id_asignacion_actividad_operativo_pk])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_capacitaciones_cursos
-- ----------------------------
ALTER TABLE [dbo].[tbl_capacitaciones_cursos] ADD CONSTRAINT [PK__tbl_capa__53B8E698E7AABE69] PRIMARY KEY CLUSTERED ([id_capacitaciones_cursos])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_carrera_oficio
-- ----------------------------
ALTER TABLE [dbo].[tbl_carrera_oficio] ADD CONSTRAINT [PK__tbl_carr__33AA188FFC1F0960] PRIMARY KEY CLUSTERED ([id_carrera_oficio])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_carrera_policial_terminada
-- ----------------------------
ALTER TABLE [dbo].[tbl_carrera_policial_terminada] ADD CONSTRAINT [PK__tbl_carr__668CDCA77ED2D461] PRIMARY KEY CLUSTERED ([id_carrera_p_t])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_datos_personales
-- ----------------------------
ALTER TABLE [dbo].[tbl_datos_personales] ADD CONSTRAINT [PK__tbl_dato__213410F8609C42D9] PRIMARY KEY CLUSTERED ([dui_pk])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_descrip_unifo
-- ----------------------------
ALTER TABLE [dbo].[tbl_descrip_unifo] ADD CONSTRAINT [PK__tbl_unif__F47EE91EF3825896] PRIMARY KEY CLUSTERED ([id_descrip_uniforme])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_detalle_accesorios
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_accesorios] ADD CONSTRAINT [PK__tbl_deta__549C3D56AEDC5C19] PRIMARY KEY CLUSTERED ([id_detalle_accesorios])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_detalle_estado
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_estado] ADD CONSTRAINT [PK__tbl_deta__704D614728859768] PRIMARY KEY CLUSTERED ([iddetalleestado])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_detalle_placa_onis
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_placa_onis] ADD CONSTRAINT [PK__tbl_deta__1A0020E057F18A91] PRIMARY KEY CLUSTERED ([id_detalle_placa])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_detalle_unifo_pol
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_unifo_pol] ADD CONSTRAINT [PK__tbl_deta__AC01D5821FFED0B7] PRIMARY KEY CLUSTERED ([id_detalle_uniforme])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_detallediscapacidad
-- ----------------------------
ALTER TABLE [dbo].[tbl_detallediscapacidad] ADD CONSTRAINT [PK__tbl_deta__FD9551A210F7EA05] PRIMARY KEY CLUSTERED ([iddetallediscapacidad])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_discapacidad
-- ----------------------------
ALTER TABLE [dbo].[tbl_discapacidad] ADD CONSTRAINT [PK__tbl_disc__FF23639371F6C34A] PRIMARY KEY CLUSTERED ([iddiscapacidad])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_enfermedades
-- ----------------------------
ALTER TABLE [dbo].[tbl_enfermedades] ADD CONSTRAINT [PK__tbl_enfe__D027B3A096161ED9] PRIMARY KEY CLUSTERED ([id_enfermedad])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_especialidades
-- ----------------------------
ALTER TABLE [dbo].[tbl_especialidades] ADD CONSTRAINT [PK__tbl_espe__C1D13763EE58BA02] PRIMARY KEY CLUSTERED ([id_especialidad])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_faltas
-- ----------------------------
ALTER TABLE [dbo].[tbl_faltas] ADD CONSTRAINT [PK__tbl_falt__3AC182554FFC280F] PRIMARY KEY CLUSTERED ([id_faltas])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_familiares
-- ----------------------------
ALTER TABLE [dbo].[tbl_familiares] ADD CONSTRAINT [PK__tbl_fami__6D6EFCB4B4345AF2] PRIMARY KEY CLUSTERED ([id_familiar])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_habilidad_tecnologica
-- ----------------------------
ALTER TABLE [dbo].[tbl_habilidad_tecnologica] ADD CONSTRAINT [PK__tbl_habi__2D9AC89E7464165F] PRIMARY KEY CLUSTERED ([id_habilidad_tecnologica])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_libro_entradas_salidas
-- ----------------------------
ALTER TABLE [dbo].[tbl_libro_entradas_salidas] ADD CONSTRAINT [PK__tbl_libr__0652DE8EABF12E46] PRIMARY KEY CLUSTERED ([id_libro_entradas_salidas])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_licencia_arma
-- ----------------------------
ALTER TABLE [dbo].[tbl_licencia_arma] ADD CONSTRAINT [PK__tbl_lice__527616B78ECA2A69] PRIMARY KEY CLUSTERED ([ id_licencia_arma])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_licencia_conducir
-- ----------------------------
ALTER TABLE [dbo].[tbl_licencia_conducir] ADD CONSTRAINT [PK__tbl_lice__EEB669B07669C269] PRIMARY KEY CLUSTERED ([id_licencia_conducir])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_modulo
-- ----------------------------
ALTER TABLE [dbo].[tbl_modulo] ADD CONSTRAINT [PK__tbl_modu__40C18A8C27E43BCC] PRIMARY KEY CLUSTERED ([idmodulo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_motivo_permiso
-- ----------------------------
ALTER TABLE [dbo].[tbl_motivo_permiso] ADD CONSTRAINT [PK__tbl_moti__5A6B1C3D39E146C3] PRIMARY KEY CLUSTERED ([id_motivo_permiso])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movi_enfermedad
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_enfermedad] ADD CONSTRAINT [PK__tbl_movi__DCC8F806736C2221] PRIMARY KEY CLUSTERED ([id_movi_mi_enfermedad])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movi_especialidad
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_especialidad] ADD CONSTRAINT [PK__tbl_movi__B6D2CB3C32CDFD8A] PRIMARY KEY CLUSTERED ([id_movi_mi_especialidad])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movi_ingreso
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_ingreso] ADD CONSTRAINT [PK__tbl_movi__5D246BD20320E291] PRIMARY KEY CLUSTERED ([id_movi_mi_ingreso])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movi_salario
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_salario] ADD CONSTRAINT [PK__tbl_movi__F3379275379A7F9E] PRIMARY KEY CLUSTERED ([id_movi_mi_salario])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movimi_arma_asig
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_arma_asig] ADD CONSTRAINT [PK__tbl_movi__8963101A09A41B08] PRIMARY KEY CLUSTERED ([id_arma_asignada])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movimi_asignacion_actividad_operativo
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo] ADD CONSTRAINT [PK__tbl_movi__042F4C61309B1492] PRIMARY KEY CLUSTERED ([id_movimi_asignacion_actividad_operativo_pk])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movimi_cap_cursos
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_cap_cursos] ADD CONSTRAINT [PK__tbl_movi__01A28648779C76B8] PRIMARY KEY CLUSTERED ([id_movimi_cap_cursos])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movimi_habilidad_tec
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_habilidad_tec] ADD CONSTRAINT [PK__tbl_movi__301A5E887E1CDCCF] PRIMARY KEY CLUSTERED ([id_movimi_hab_tec])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movimi_libro_entradas_salidas
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_libro_entradas_salidas] ADD CONSTRAINT [PK__tbl_movi__3EF1D5F96B1AA90F] PRIMARY KEY CLUSTERED ([id_movimi_libro_entradas_salidas ])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movimi_promo
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_promo] ADD CONSTRAINT [PK__tbl_movi__45048ADEA9F313C0] PRIMARY KEY CLUSTERED ([id_movimi_promocion])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movimi_sansiones
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_sansiones] ADD CONSTRAINT [PK__tbl_movi__CB0F8F9DE5BF7B91] PRIMARY KEY CLUSTERED ([id_movimi_sansion])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_nilv_org
-- ----------------------------
ALTER TABLE [dbo].[tbl_nilv_org] ADD CONSTRAINT [PK__tbl_nilv__EB3968FB591D7B64] PRIMARY KEY CLUSTERED ([idNivelOrg])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_nivel_academico
-- ----------------------------
ALTER TABLE [dbo].[tbl_nivel_academico] ADD CONSTRAINT [PK__tbl_nive__6F76BDC0DB22651A] PRIMARY KEY CLUSTERED ([id_nivel_academico])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_nivel_puest
-- ----------------------------
ALTER TABLE [dbo].[tbl_nivel_puest] ADD CONSTRAINT [PK__tbl_nive__820DC77EA6A91C99] PRIMARY KEY CLUSTERED ([idNivelOrgPuesto])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_oni_policial
-- ----------------------------
ALTER TABLE [dbo].[tbl_oni_policial] ADD CONSTRAINT [PK__tbl_oni___6E0C7886355042FA] PRIMARY KEY CLUSTERED ([id_oni])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_permiso_con_sin_goce_sueldo
-- ----------------------------
ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] ADD CONSTRAINT [PK__tbl_perm__3358D223A63D1087] PRIMARY KEY CLUSTERED ([id_permiso_con_goce_sueldo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_permisos
-- ----------------------------
ALTER TABLE [dbo].[tbl_permisos] ADD CONSTRAINT [PK__tbl_perm__85C7F9006B8A4A99] PRIMARY KEY CLUSTERED ([idpermiso])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_promocion
-- ----------------------------
ALTER TABLE [dbo].[tbl_promocion] ADD CONSTRAINT [PK__tbl_movi__B36E23762F19C0A5] PRIMARY KEY CLUSTERED ([id_promocion])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_puesto
-- ----------------------------
ALTER TABLE [dbo].[tbl_puesto] ADD CONSTRAINT [PK__tbl_pues__ADF48F1911BFD009] PRIMARY KEY CLUSTERED ([idPuesto])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_rol
-- ----------------------------
ALTER TABLE [dbo].[tbl_rol] ADD CONSTRAINT [PK__tbl_rol__24C6BB204F4EFAFD] PRIMARY KEY CLUSTERED ([idrol])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_sansiones
-- ----------------------------
ALTER TABLE [dbo].[tbl_sansiones] ADD CONSTRAINT [PK__tbl_sans__245E29163FEB8655] PRIMARY KEY CLUSTERED ([id_sansiones])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_telefono
-- ----------------------------
ALTER TABLE [dbo].[tbl_telefono] ADD CONSTRAINT [PK__tbl_tele__6A29A77FD68115ED] PRIMARY KEY CLUSTERED ([id_tel])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_tipo_vehiculo
-- ----------------------------
ALTER TABLE [dbo].[tbl_tipo_vehiculo] ADD CONSTRAINT [PK__tbl_tipo__429A3B81DB45C601] PRIMARY KEY CLUSTERED ([idTipoVehiculo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_usuario
-- ----------------------------
ALTER TABLE [dbo].[tbl_usuario] ADD CONSTRAINT [PK__tbl_usua__080A974396516ED6] PRIMARY KEY CLUSTERED ([idusuario])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_vehiculo
-- ----------------------------
ALTER TABLE [dbo].[tbl_vehiculo] ADD CONSTRAINT [PK__tbl_vehi__BBB993C6B67528C9] PRIMARY KEY CLUSTERED ([numero_equipo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblo_estado_vehiculo
-- ----------------------------
ALTER TABLE [dbo].[tblo_estado_vehiculo] ADD CONSTRAINT [PK__tblo_est__EB43E7F919D4A4B7] PRIMARY KEY CLUSTERED ([idEstadoVehiculo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tipoNivelOrg
-- ----------------------------
ALTER TABLE [dbo].[tipoNivelOrg] ADD CONSTRAINT [PK__tipoNive__71B8F40242AFE198] PRIMARY KEY CLUSTERED ([idtipo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_asig_pol_puesto
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_pol_puesto] ADD CONSTRAINT [FK__tbl_asig___fk_id__0C85DE4D] FOREIGN KEY ([fk_id_nivel_org_puest]) REFERENCES [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_asig_pol_puesto] ADD CONSTRAINT [fk_oni_policial_puesto] FOREIGN KEY ([fk_oni_policial]) REFERENCES [dbo].[tbl_oni_policial] ([id_oni]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_asig_uniforme
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_uniforme] ADD CONSTRAINT [fk_oni_poli_recibe] FOREIGN KEY ([fk_oni_poli_recibe]) REFERENCES [dbo].[tbl_oni_policial] ([id_oni]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_asig_uniforme] ADD CONSTRAINT [fk_oni_poli_entrega] FOREIGN KEY ([fk_oni_poli_entrega]) REFERENCES [dbo].[tbl_oni_policial] ([id_oni]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_asig_vehi_delegacion
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_vehi_delegacion] ADD CONSTRAINT [fk_numero_equipo] FOREIGN KEY ([fk_numero_equipo]) REFERENCES [dbo].[tbl_vehiculo] ([numero_equipo]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_asig_vehi_delegacion] ADD CONSTRAINT [fk_id_nivel_org] FOREIGN KEY ([fk_id_nivel_org]) REFERENCES [dbo].[tbl_nilv_org] ([idNivelOrg]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_asignacion_actividad_operativo
-- ----------------------------
ALTER TABLE [dbo].[tbl_asignacion_actividad_operativo] ADD CONSTRAINT [FK__tbl_asign__id_ac__0D7A0286] FOREIGN KEY ([id_actividad_fk]) REFERENCES [dbo].[tbl_actividades] ([id_actividad_pk]) ON DELETE CASCADE ON UPDATE CASCADE
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_carrera_policial_terminada
-- ----------------------------
ALTER TABLE [dbo].[tbl_carrera_policial_terminada] ADD CONSTRAINT [FK__tbl_carre__fk_du__0F624AF8] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_detalle_accesorios
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_accesorios] ADD CONSTRAINT [fk_descrip_unifo_pol] FOREIGN KEY ([fk_descrip_unifo_pol]) REFERENCES [dbo].[tbl_descrip_unifo] ([id_descrip_uniforme]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_detalle_accesorios] ADD CONSTRAINT [fk_asig_uniforme_pol] FOREIGN KEY ([fk_asig_uniforme_pol]) REFERENCES [dbo].[tbl_asig_uniforme] ([id_asig_uniforme_pol]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_detalle_estado
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_estado] ADD CONSTRAINT [FK__tbl_detal__fk_Es__10566F31] FOREIGN KEY ([fk_EstadoVehiculo]) REFERENCES [dbo].[tblo_estado_vehiculo] ([idEstadoVehiculo]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[tbl_detalle_estado] ADD CONSTRAINT [FK__tbl_detal__fk_nu__114A936A] FOREIGN KEY ([fk_numeroEquipo]) REFERENCES [dbo].[tbl_vehiculo] ([numero_equipo]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_detalle_placa_onis
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_placa_onis] ADD CONSTRAINT [fk_id_descrip_unifo] FOREIGN KEY ([fk_id_descrip_unifo]) REFERENCES [dbo].[tbl_descrip_unifo] ([id_descrip_uniforme]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_detalle_placa_onis] ADD CONSTRAINT [fk_id_asig_unifo_pol] FOREIGN KEY ([fk_id_asig_unifo_pol]) REFERENCES [dbo].[tbl_asig_uniforme] ([id_asig_uniforme_pol]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_detalle_unifo_pol
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_unifo_pol] ADD CONSTRAINT [fk_id_asig_uniforme_pol] FOREIGN KEY ([fk_id_asig_uniforme_pol]) REFERENCES [dbo].[tbl_asig_uniforme] ([id_asig_uniforme_pol]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_detalle_unifo_pol] ADD CONSTRAINT [fk_id_descrip_unifor] FOREIGN KEY ([fk_id_descrip_unifor]) REFERENCES [dbo].[tbl_descrip_unifo] ([id_descrip_uniforme]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_detallediscapacidad
-- ----------------------------
ALTER TABLE [dbo].[tbl_detallediscapacidad] ADD CONSTRAINT [fk_disca] FOREIGN KEY ([duiagente]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[tbl_detallediscapacidad] ADD CONSTRAINT [fk_dissi] FOREIGN KEY ([iddiscapacidad]) REFERENCES [dbo].[tbl_discapacidad] ([iddiscapacidad]) ON DELETE CASCADE ON UPDATE CASCADE
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_familiares
-- ----------------------------
ALTER TABLE [dbo].[tbl_familiares] ADD CONSTRAINT [FK__tbl_famil__fk_du__123EB7A3] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_licencia_arma
-- ----------------------------
ALTER TABLE [dbo].[tbl_licencia_arma] ADD CONSTRAINT [fk_dui_policial_licencia_arma] FOREIGN KEY ([fk_dui_policial_licencia_arma]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_licencia_conducir
-- ----------------------------
ALTER TABLE [dbo].[tbl_licencia_conducir] ADD CONSTRAINT [FK__tbl_licen__fk_du__1332DBDC] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movi_enfermedad
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_enfermedad] ADD CONSTRAINT [FK__tbl_movi___fk_id__14270015] FOREIGN KEY ([fk_id_enfermedad]) REFERENCES [dbo].[tbl_enfermedades] ([id_enfermedad]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movi_enfermedad] ADD CONSTRAINT [FK__tbl_movi___fk_du__151B244E] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movi_especialidad
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_especialidad] ADD CONSTRAINT [FK__tbl_movi___fk_id__160F4887] FOREIGN KEY ([fk_id_especialidad]) REFERENCES [dbo].[tbl_especialidades] ([id_especialidad]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movi_especialidad] ADD CONSTRAINT [FK__tbl_movi___fk_du__17036CC0] FOREIGN KEY ([fk_dui_policia]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movi_ingreso
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_ingreso] ADD CONSTRAINT [FK__tbl_movi___fk_du__17F790F9] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movi_salario
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_salario] ADD CONSTRAINT [FK__tbl_movi___fk_du__19DFD96B] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movimi_arma_asig
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_arma_asig] ADD CONSTRAINT [FK__tbl_movim__fk_id__1AD3FDA4] FOREIGN KEY ([fk_id_arma]) REFERENCES [dbo].[tbl_arma] ([id_arma ]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movimi_arma_asig] ADD CONSTRAINT [FK__tbl_movim__fk_du__1BC821DD] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movimi_asignacion_actividad_operativo
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo] ADD CONSTRAINT [FK__tbl_movim__id_as__1CBC4616] FOREIGN KEY ([id_asignacion_actividad_operativo_fk]) REFERENCES [dbo].[tbl_asignacion_actividad_operativo] ([id_asignacion_actividad_operativo_pk]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo] ADD CONSTRAINT [FK__tbl_movim__dui_f__1DB06A4F] FOREIGN KEY ([dui_fk]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE CASCADE ON UPDATE CASCADE
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movimi_cap_cursos
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_cap_cursos] ADD CONSTRAINT [FK__tbl_movim__fk_du__1EA48E88] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movimi_cap_cursos] ADD CONSTRAINT [FK__tbl_movim__fk_id__1F98B2C1] FOREIGN KEY ([fk_id_capacitaciones_cursos]) REFERENCES [dbo].[tbl_capacitaciones_cursos] ([id_capacitaciones_cursos]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movimi_habilidad_tec
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_habilidad_tec] ADD CONSTRAINT [FK__tbl_movim__fk_du__208CD6FA] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movimi_habilidad_tec] ADD CONSTRAINT [FK__tbl_movim__fk_id__2180FB33] FOREIGN KEY ([fk_id_hab_tec]) REFERENCES [dbo].[tbl_habilidad_tecnologica] ([id_habilidad_tecnologica]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movimi_libro_entradas_salidas
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_libro_entradas_salidas] ADD CONSTRAINT [FK__tbl_movim__fk_du__22751F6C] FOREIGN KEY ([fk_dui]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movimi_libro_entradas_salidas] ADD CONSTRAINT [FK__tbl_movim__fk_id__236943A5] FOREIGN KEY ([fk_id_libro_entradas_salidas]) REFERENCES [dbo].[tbl_libro_entradas_salidas] ([id_libro_entradas_salidas]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movimi_promo
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_promo] ADD CONSTRAINT [fk_dui_policial_promocion] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movimi_promo] ADD CONSTRAINT [fk_id_promocion] FOREIGN KEY ([fk_id_promocion]) REFERENCES [dbo].[tbl_promocion] ([id_promocion]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movimi_sansiones
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_sansiones] ADD CONSTRAINT [FK__tbl_movim__fk_du__245D67DE] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movimi_sansiones] ADD CONSTRAINT [FK__tbl_movim__fk_id__25518C17] FOREIGN KEY ([fk_id_sansion]) REFERENCES [dbo].[tbl_sansiones] ([id_sansiones]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_nilv_org
-- ----------------------------
ALTER TABLE [dbo].[tbl_nilv_org] ADD CONSTRAINT [FK__tbl_nilv___tipoN__2645B050] FOREIGN KEY ([tipoNivel]) REFERENCES [dbo].[tipoNivelOrg] ([idtipo]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_nivel_academico
-- ----------------------------
ALTER TABLE [dbo].[tbl_nivel_academico] ADD CONSTRAINT [FK__tbl_nivel__fk_du__2739D489] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_nivel_academico] ADD CONSTRAINT [FK__tbl_nivel__fk_id__282DF8C2] FOREIGN KEY ([fk_id_carrera_oficio]) REFERENCES [dbo].[tbl_carrera_oficio] ([id_carrera_oficio]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_nivel_puest
-- ----------------------------
ALTER TABLE [dbo].[tbl_nivel_puest] ADD CONSTRAINT [FK__tbl_nivel__idNiv__29221CFB] FOREIGN KEY ([idNivelOrg]) REFERENCES [dbo].[tbl_nilv_org] ([idNivelOrg]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_nivel_puest] ADD CONSTRAINT [FK__tbl_nivel__idPue__2A164134] FOREIGN KEY ([idPuesto]) REFERENCES [dbo].[tbl_puesto] ([idPuesto]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_oni_policial
-- ----------------------------
ALTER TABLE [dbo].[tbl_oni_policial] ADD CONSTRAINT [FK__tbl_oni_p__fk_du__2B0A656D] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_permiso_con_sin_goce_sueldo
-- ----------------------------
ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] ADD CONSTRAINT [FK__tbl_permi__fk_du__2BFE89A6] FOREIGN KEY ([fk_dui_jefe_inmediato]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] ADD CONSTRAINT [FK__tbl_permi__fk_du__2CF2ADDF] FOREIGN KEY ([fk_dui_jefe_inmediato_superior]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] ADD CONSTRAINT [FK__tbl_permi__id_mo__2DE6D218] FOREIGN KEY ([id_motivo_permiso]) REFERENCES [dbo].[tbl_motivo_permiso] ([id_motivo_permiso]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] ADD CONSTRAINT [FK__tbl_permi__fk_du__2EDAF651] FOREIGN KEY ([fk_dui_solicitante]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_permisos
-- ----------------------------
ALTER TABLE [dbo].[tbl_permisos] ADD CONSTRAINT [fk_modulo] FOREIGN KEY ([moduloid]) REFERENCES [dbo].[tbl_modulo] ([idmodulo]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_permisos] ADD CONSTRAINT [fk_rolpermi] FOREIGN KEY ([rolid]) REFERENCES [dbo].[tbl_rol] ([idrol]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_sansiones
-- ----------------------------
ALTER TABLE [dbo].[tbl_sansiones] ADD CONSTRAINT [FK__tbl_sansi__fk_id__2FCF1A8A] FOREIGN KEY ([fk_id_faltas]) REFERENCES [dbo].[tbl_faltas] ([id_faltas]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_telefono
-- ----------------------------
ALTER TABLE [dbo].[tbl_telefono] ADD CONSTRAINT [FK__tbl_telef__fk_du__30C33EC3] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_usuario
-- ----------------------------
ALTER TABLE [dbo].[tbl_usuario] ADD CONSTRAINT [fk_duipol] FOREIGN KEY ([fk_dui]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_usuario] ADD CONSTRAINT [fk_rolusu] FOREIGN KEY ([rolid]) REFERENCES [dbo].[tbl_rol] ([idrol]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_vehiculo
-- ----------------------------
ALTER TABLE [dbo].[tbl_vehiculo] ADD CONSTRAINT [FK__tbl_vehic__fk_ti__31B762FC] FOREIGN KEY ([fk_tipoVehiculo]) REFERENCES [dbo].[tbl_tipo_vehiculo] ([idTipoVehiculo]) ON DELETE CASCADE ON UPDATE CASCADE
GO

