/*
 Navicat Premium Data Transfer

 Source Server         : SQLServer
 Source Server Type    : SQL Server
 Source Server Version : 15002080
 Source Host           : RIQUELMIHP:1433
 Source Catalog        : db_pnc
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002080
 File Encoding         : 65001

 Date: 31/10/2021 15:02:00
*/


-- ----------------------------
-- Table structure for tbl_actividades
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_actividades]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_actividades]
GO

CREATE TABLE [dbo].[tbl_actividades] (
  [id_actividad_pk] int  IDENTITY(1,1) NOT NULL,
  [nombre_actividad] varchar(100) COLLATE Latin1_General_CI_AI  NOT NULL,
  [descripcion] varchar(200) COLLATE Latin1_General_CI_AI  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_actividades] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_actividades
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tbl_actividades] ON
GO

SET IDENTITY_INSERT [dbo].[tbl_actividades] OFF
GO


-- ----------------------------
-- Table structure for tbl_arma
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_arma]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_arma]
GO

CREATE TABLE [dbo].[tbl_arma] (
  [id_arma ] varchar(50) COLLATE Latin1_General_CI_AI  NOT NULL,
  [marca] varchar(50) COLLATE Latin1_General_CI_AI  NULL,
  [tipo] varchar(50) COLLATE Latin1_General_CI_AI  NULL,
  [serie] varchar(50) COLLATE Latin1_General_CI_AI  NULL,
  [modelo] varchar(50) COLLATE Latin1_General_CI_AI  NULL,
  [calibre] varchar(50) COLLATE Latin1_General_CI_AI  NULL,
  [balistica] varchar(50) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_arma] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_arma
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_asig_pol_puesto
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_asig_pol_puesto]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_asig_pol_puesto]
GO

CREATE TABLE [dbo].[tbl_asig_pol_puesto] (
  [id_asig_pol_puesto] int  NOT NULL,
  [fk_oni_pol] varchar(10) COLLATE Latin1_General_CI_AI  NULL,
  [fk_id_nivel_org_puest] int  NULL,
  [fecha_asig] date  NULL
)
GO

ALTER TABLE [dbo].[tbl_asig_pol_puesto] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_asig_pol_puesto
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_asig_rango
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_asig_rango]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_asig_rango]
GO

CREATE TABLE [dbo].[tbl_asig_rango] (
  [id_asig_rango] int  IDENTITY(1,1) NOT NULL,
  [fk_rango] int  NOT NULL,
  [fk_oni_policial] varchar(10) COLLATE Latin1_General_CI_AI  NOT NULL,
  [fecha_asig_rango] datetime  NOT NULL,
  [estado_rango] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_asig_rango] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_asig_rango
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tbl_asig_rango] ON
GO

SET IDENTITY_INSERT [dbo].[tbl_asig_rango] OFF
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
  [fk_oni_poli_recibe] varchar(10) COLLATE Latin1_General_CI_AI  NULL,
  [fk_oni_poli_entrega] varchar(10) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_asig_uniforme] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_asig_uniforme
-- ----------------------------

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
-- Records of tbl_asig_vehi_delegacion
-- ----------------------------

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
  [observacion] varchar(200) COLLATE Latin1_General_CI_AI  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_asignacion_actividad_operativo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_asignacion_actividad_operativo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tbl_asignacion_actividad_operativo] ON
GO

SET IDENTITY_INSERT [dbo].[tbl_asignacion_actividad_operativo] OFF
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
  [descripcion] varchar(255) COLLATE Latin1_General_CI_AI  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_capacitaciones_cursos] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_capacitaciones_cursos
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_carrera_oficio
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_carrera_oficio]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_carrera_oficio]
GO

CREATE TABLE [dbo].[tbl_carrera_oficio] (
  [id_carrera_oficio] int  NOT NULL,
  [tipo] int  NOT NULL,
  [descripcion] varchar(255) COLLATE Latin1_General_CI_AI  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_carrera_oficio] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_carrera_oficio
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_carrera_policial_terminada
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_carrera_policial_terminada]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_carrera_policial_terminada]
GO

CREATE TABLE [dbo].[tbl_carrera_policial_terminada] (
  [id_carrera_p_t] varchar(50) COLLATE Latin1_General_CI_AI  NOT NULL,
  [causa] varchar(50) COLLATE Latin1_General_CI_AI  NULL,
  [fecha_carrera_policial_terminada] date  NULL,
  [fk_dui_policial] varchar(10) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_carrera_policial_terminada] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_carrera_policial_terminada
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_datos_personales
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_datos_personales]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_datos_personales]
GO

CREATE TABLE [dbo].[tbl_datos_personales] (
  [dui_pk] varchar(10) COLLATE Latin1_General_CI_AI  NOT NULL,
  [nit] varchar(20) COLLATE Latin1_General_CI_AI  NULL,
  [iss] varchar(25) COLLATE Latin1_General_CI_AI  NULL,
  [nombre] varchar(50) COLLATE Latin1_General_CI_AI  NULL,
  [apellido] varchar(50) COLLATE Latin1_General_CI_AI  NULL,
  [tipo_sangre] varchar(30) COLLATE Latin1_General_CI_AI  NULL,
  [estado_civil] varchar(20) COLLATE Latin1_General_CI_AI  NULL,
  [fecha_nacimiento] date  NULL,
  [lugar_nacimiento] varchar(100) COLLATE Latin1_General_CI_AI  NULL,
  [sexo] varchar(10) COLLATE Latin1_General_CI_AI  NULL,
  [estatura] varchar(10) COLLATE Latin1_General_CI_AI  NULL,
  [peso] varchar(10) COLLATE Latin1_General_CI_AI  NULL,
  [foto_personal] image  NULL
)
GO

ALTER TABLE [dbo].[tbl_datos_personales] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_datos_personales
-- ----------------------------
INSERT INTO [dbo].[tbl_datos_personales] ([dui_pk], [nit], [iss], [nombre], [apellido], [tipo_sangre], [estado_civil], [fecha_nacimiento], [lugar_nacimiento], [sexo], [estatura], [peso], [foto_personal]) VALUES (N'01668595-4', N'000-000000-000-0', N'00000', N'Marvin Aldair', N'Alfaro Ruedas', N'O-', N'Casado', N'2000-10-28', N'Colonia Lomas De apastepeque', N'M', N'1.81', N'85K', NULL)
GO
INSERT INTO [dbo].[tbl_datos_personales] ([dui_pk], [nit], [iss], [nombre], [apellido], [tipo_sangre], [estado_civil], [fecha_nacimiento], [lugar_nacimiento], [sexo], [estatura], [peso], [foto_personal]) VALUES (N'53462634-3', N'1234-635467-653-4', N'63747', N'Lucia Isabel', N'Gutierrez Abalos', N'A', N'Soltero', CAST(N'2000-03-07' AS Date), N'Ilobasco', N'Femenino', N'1.65', N'58K', NULL)
GO
INSERT INTO [dbo].[tbl_datos_personales] ([dui_pk], [nit], [iss], [nombre], [apellido], [tipo_sangre], [estado_civil], [fecha_nacimiento], [lugar_nacimiento], [sexo], [estatura], [peso], [foto_personal]) VALUES (N'98765432-1', N'1232-123456-123-3', N'83746', N'Erik Manrique', N'Flores Lara', N'B', N'Soltero', CAST(N'1998-07-01' AS Date), N'Tejetepeque', N'Masculino', N'1.73', N'60K', NULL)
GO


-- ----------------------------
-- Table structure for tbl_descrip_unifo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_descrip_unifo]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_descrip_unifo]
GO

CREATE TABLE [dbo].[tbl_descrip_unifo] (
  [id_descrip_uniforme] int  NOT NULL,
  [nombre] varchar(50) COLLATE Latin1_General_CI_AI  NOT NULL,
  [tipo] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_descrip_unifo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_descrip_unifo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_detalle_accesorios
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_detalle_accesorios]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_detalle_accesorios]
GO

CREATE TABLE [dbo].[tbl_detalle_accesorios] (
  [id_detalle_accesorios] int  NOT NULL,
  [cantidad] int  NULL,
  [num_serie] varchar(8) COLLATE Latin1_General_CI_AI  NULL,
  [fk_descrip_unifo_pol] int  NULL,
  [fk_asig_uniforme_pol] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_detalle_accesorios] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_detalle_accesorios
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_detalle_estado
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_detalle_estado]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_detalle_estado]
GO

CREATE TABLE [dbo].[tbl_detalle_estado] (
  [iddetalleestado] int  NOT NULL,
  [fecha_detalle] datetime  NOT NULL,
  [fk_numeroEquipo] int  NOT NULL,
  [fk_EstadoVehiculo] int  NOT NULL,
  [situacion_vehiculo] bit  NOT NULL,
  [estado_vehiculo] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_detalle_estado] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_detalle_estado
-- ----------------------------

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
  [observacion] text COLLATE Latin1_General_CI_AI  NULL,
  [fk_id_descrip_unifo] int  NULL,
  [fk_id_asig_unifo_pol] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_detalle_placa_onis] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_detalle_placa_onis
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_detalle_unifo_pol
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_detalle_unifo_pol]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_detalle_unifo_pol]
GO

CREATE TABLE [dbo].[tbl_detalle_unifo_pol] (
  [id_detalle_uniforme] int  NOT NULL,
  [talla] varchar(10) COLLATE Latin1_General_CI_AI  NULL,
  [codigo] varchar(10) COLLATE Latin1_General_CI_AI  NULL,
  [fk_id_asig_uniforme_pol] int  NULL,
  [fk_id_descrip_unifor] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_detalle_unifo_pol] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_detalle_unifo_pol
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_detallediscapacidad
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_detallediscapacidad]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_detallediscapacidad]
GO

CREATE TABLE [dbo].[tbl_detallediscapacidad] (
  [iddetallediscapacidad] varchar(255) COLLATE Latin1_General_CI_AI  NOT NULL,
  [duiagente] varchar(10) COLLATE Latin1_General_CI_AI  NOT NULL,
  [iddiscapacidad] varchar(255) COLLATE Latin1_General_CI_AI  NOT NULL,
  [Observacion] varchar(255) COLLATE Latin1_General_CI_AI  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_detallediscapacidad] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_detallediscapacidad
-- ----------------------------
INSERT INTO [dbo].[tbl_detallediscapacidad] ([iddetallediscapacidad], [duiagente], [iddiscapacidad], [Observacion]) VALUES (N'1', N'01668595-4', N'1', N'Nulas')
GO

INSERT INTO [dbo].[tbl_detallediscapacidad] ([iddetallediscapacidad], [duiagente], [iddiscapacidad], [Observacion]) VALUES (N'2', N'01668595-4', N'2', N'Nulas')
GO

INSERT INTO [dbo].[tbl_detallediscapacidad] ([iddetallediscapacidad], [duiagente], [iddiscapacidad], [Observacion]) VALUES (N'3', N'01668595-4', N'3', N'Nulas')
GO


-- ----------------------------
-- Table structure for tbl_discapacidad
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_discapacidad]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_discapacidad]
GO

CREATE TABLE [dbo].[tbl_discapacidad] (
  [iddiscapacidad] varchar(255) COLLATE Latin1_General_CI_AI  NOT NULL,
  [tipo_discapacidad] varchar(255) COLLATE Latin1_General_CI_AI  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_discapacidad] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_discapacidad
-- ----------------------------
INSERT INTO [dbo].[tbl_discapacidad] ([iddiscapacidad], [tipo_discapacidad]) VALUES (N'1', N'Fisica')
GO

INSERT INTO [dbo].[tbl_discapacidad] ([iddiscapacidad], [tipo_discapacidad]) VALUES (N'2', N'Visual')
GO

INSERT INTO [dbo].[tbl_discapacidad] ([iddiscapacidad], [tipo_discapacidad]) VALUES (N'3', N'Psicosocial')
GO

INSERT INTO [dbo].[tbl_discapacidad] ([iddiscapacidad], [tipo_discapacidad]) VALUES (N'4', N'Intelectual')
GO

INSERT INTO [dbo].[tbl_discapacidad] ([iddiscapacidad], [tipo_discapacidad]) VALUES (N'5', N'Auditiva')
GO

-- ----------------------------
-- Table structure for tbl_enfermedades
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_enfermedades]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_enfermedades]
GO

CREATE TABLE [dbo].[tbl_enfermedades] (
  [id_enfermedad] int  NOT NULL,
  [nombre_enfermedad] varchar(100) COLLATE Latin1_General_CI_AI  NULL,
  [tipo] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_enfermedades] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_enfermedades
-- ----------------------------
INSERT INTO [dbo].[tbl_enfermedades] ([id_enfermedad], [nombre_enfermedad], [tipo]) VALUES (1, N'Asma', 1)
GO
INSERT INTO [dbo].[tbl_enfermedades] ([id_enfermedad], [nombre_enfermedad], [tipo]) VALUES (2, N'Artritis', 2)
GO
INSERT INTO [dbo].[tbl_enfermedades] ([id_enfermedad], [nombre_enfermedad], [tipo]) VALUES (3, N'Diabetes', 3)
GO
INSERT INTO [dbo].[tbl_enfermedades] ([id_enfermedad], [nombre_enfermedad], [tipo]) VALUES (4, N'Rabia', 4)
GO
INSERT INTO [dbo].[tbl_enfermedades] ([id_enfermedad], [nombre_enfermedad], [tipo]) VALUES (5, N'Sifilis', 5)
GO
-- ----------------------------
-- Table structure for tbl_especialidades
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_especialidades]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_especialidades]
GO

CREATE TABLE [dbo].[tbl_especialidades] (
  [id_especialidad] int  NOT NULL,
  [especialidad] varchar(50) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_especialidades] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_especialidades
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_faltas
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_faltas]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_faltas]
GO

CREATE TABLE [dbo].[tbl_faltas] (
  [id_faltas] int  NOT NULL,
  [falta] varchar(100) COLLATE Latin1_General_CI_AI  NOT NULL,
  [tipo_falta_cometida] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_faltas] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_faltas
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_familiares
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_familiares]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_familiares]
GO

CREATE TABLE [dbo].[tbl_familiares] (
  [id_familiar] varchar(15) COLLATE Latin1_General_CI_AI  NOT NULL,
  [dui_familiar] varchar(10) COLLATE Latin1_General_CI_AI  NULL,
  [parentesco] varchar(30) COLLATE Latin1_General_CI_AI  NULL,
  [nombre] varchar(50) COLLATE Latin1_General_CI_AI  NULL,
  [apellido] varchar(50) COLLATE Latin1_General_CI_AI  NULL,
  [telefono] varchar(9) COLLATE Latin1_General_CI_AI  NULL,
  [fk_dui_policial] varchar(10) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_familiares] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_familiares
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_habilidad_tecnologica
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_habilidad_tecnologica]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_habilidad_tecnologica]
GO

CREATE TABLE [dbo].[tbl_habilidad_tecnologica] (
  [id_habilidad_tecnologica] int  NOT NULL,
  [descripcion] varchar(255) COLLATE Latin1_General_CI_AI  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_habilidad_tecnologica] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_habilidad_tecnologica
-- ----------------------------

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
  [observacion_novedad] varchar(255) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_libro_entradas_salidas] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_libro_entradas_salidas
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tbl_libro_entradas_salidas] ON
GO

SET IDENTITY_INSERT [dbo].[tbl_libro_entradas_salidas] OFF
GO


-- ----------------------------
-- Table structure for tbl_licencia_arma
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_licencia_arma]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_licencia_arma]
GO

CREATE TABLE [dbo].[tbl_licencia_arma] (
  [ id_licencia_arma] int  NOT NULL,
  [numero_licencia] varchar(20) COLLATE Latin1_General_CI_AI  NULL,
  [tipo_licencia] varchar(20) COLLATE Latin1_General_CI_AI  NULL,
  [fecha_renovacion] date  NULL,
  [permiso] tinyint  NULL,
  [fk_dui_policial_licencia_arma] varchar(10) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_licencia_arma] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_licencia_arma
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_licencia_conducir
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_licencia_conducir]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_licencia_conducir]
GO

CREATE TABLE [dbo].[tbl_licencia_conducir] (
  [id_licencia_conducir] varchar(50) COLLATE Latin1_General_CI_AI  NOT NULL,
  [numero_licencia] varchar(20) COLLATE Latin1_General_CI_AI  NULL,
  [tipo_licencia] varchar(20) COLLATE Latin1_General_CI_AI  NULL,
  [fecha_renovacion] date  NULL,
  [permiso] varchar(50) COLLATE Latin1_General_CI_AI  NULL,
  [fk_dui_policial] varchar(10) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_licencia_conducir] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_licencia_conducir
-- ----------------------------

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
-- Records of tbl_modulo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_motivo_permiso
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_motivo_permiso]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_motivo_permiso]
GO

CREATE TABLE [dbo].[tbl_motivo_permiso] (
  [id_motivo_permiso] int  IDENTITY(1,1) NOT NULL,
  [motivos_permiso_con_goce_de_sueldo] varchar(150) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_motivo_permiso] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_motivo_permiso
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tbl_motivo_permiso] ON
GO

SET IDENTITY_INSERT [dbo].[tbl_motivo_permiso] OFF
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
  [fk_dui_policial] varchar(10) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_movi_enfermedad] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_movi_enfermedad
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_movi_especialidad
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movi_especialidad]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movi_especialidad]
GO

CREATE TABLE [dbo].[tbl_movi_especialidad] (
  [id_movi_mi_especialidad] int  NOT NULL,
  [fk_dui_policia] varchar(10) COLLATE Latin1_General_CI_AI  NULL,
  [fk_id_especialidad] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_movi_especialidad] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_movi_especialidad
-- ----------------------------
INSERT INTO [dbo].[tbl_movi_enfermedad] ([id_movi_mi_enfermedad], [fecha_deteccion], [enfermedad_vigente], [url_img_enfermedad], [fk_id_enfermedad], [fk_dui_policial]) VALUES (1, CAST(N'2021-06-10' AS Date), 1, NULL, 1, N'01668595-4')
GO
INSERT INTO [dbo].[tbl_movi_enfermedad] ([id_movi_mi_enfermedad], [fecha_deteccion], [enfermedad_vigente], [url_img_enfermedad], [fk_id_enfermedad], [fk_dui_policial]) VALUES (2, CAST(N'2021-05-20' AS Date), 1, NULL, 2, N'01668595-4')
GO
INSERT INTO [dbo].[tbl_movi_enfermedad] ([id_movi_mi_enfermedad], [fecha_deteccion], [enfermedad_vigente], [url_img_enfermedad], [fk_id_enfermedad], [fk_dui_policial]) VALUES (3, CAST(N'2021-04-15' AS Date), 1, NULL, 3, N'53462634-3')
GO
INSERT INTO [dbo].[tbl_movi_enfermedad] ([id_movi_mi_enfermedad], [fecha_deteccion], [enfermedad_vigente], [url_img_enfermedad], [fk_id_enfermedad], [fk_dui_policial]) VALUES (4, CAST(N'2021-08-19' AS Date), 0, NULL, 4, N'98765432-1')
GO
INSERT INTO [dbo].[tbl_movi_enfermedad] ([id_movi_mi_enfermedad], [fecha_deteccion], [enfermedad_vigente], [url_img_enfermedad], [fk_id_enfermedad], [fk_dui_policial]) VALUES (5, CAST(N'2021-07-14' AS Date), 0, NULL, 5, N'01668595-4')
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
  [fk_dui_policial] varchar(10) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_movi_ingreso] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_movi_ingreso
-- ----------------------------

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
  [fk_dui_policial] varchar(10) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_movi_salario] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_movi_salario
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_movimi_arma_asig
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movimi_arma_asig]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movimi_arma_asig]
GO

CREATE TABLE [dbo].[tbl_movimi_arma_asig] (
  [id_arma_asignada] varchar(50) COLLATE Latin1_General_CI_AI  NOT NULL,
  [fecha_asigna] date  NULL,
  [fk_dui_policial] varchar(10) COLLATE Latin1_General_CI_AI  NULL,
  [fk_id_arma] varchar(50) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_movimi_arma_asig] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_movimi_arma_asig
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_movimi_asignacion_actividad_operativo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movimi_asignacion_actividad_operativo]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo]
GO

CREATE TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo] (
  [id_movimi_asignacion_actividad_operativo_pk] int  IDENTITY(1,1) NOT NULL,
  [id_asignacion_actividad_operativo_fk] int  NOT NULL,
  [dui_fk] varchar(10) COLLATE Latin1_General_CI_AI  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_movimi_asignacion_actividad_operativo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tbl_movimi_asignacion_actividad_operativo] ON
GO

SET IDENTITY_INSERT [dbo].[tbl_movimi_asignacion_actividad_operativo] OFF
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
  [fk_dui_policial] varchar(10) COLLATE Latin1_General_CI_AI  NOT NULL,
  [fk_id_capacitaciones_cursos] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_movimi_cap_cursos] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_movimi_cap_cursos
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_movimi_habilidad_tec
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movimi_habilidad_tec]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movimi_habilidad_tec]
GO

CREATE TABLE [dbo].[tbl_movimi_habilidad_tec] (
  [id_movimi_hab_tec] int  NOT NULL,
  [fecha_registro] datetime  NOT NULL,
  [fk_dui_policial] varchar(10) COLLATE Latin1_General_CI_AI  NOT NULL,
  [fk_id_hab_tec] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_movimi_habilidad_tec] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_movimi_habilidad_tec
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_movimi_libro_entradas_salidas
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movimi_libro_entradas_salidas]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movimi_libro_entradas_salidas]
GO

CREATE TABLE [dbo].[tbl_movimi_libro_entradas_salidas] (
  [id_movimi_libro_entradas_salidas ] int  IDENTITY(1,1) NOT NULL,
  [fk_id_libro_entradas_salidas] int  NULL,
  [fk_dui] varchar(10) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_movimi_libro_entradas_salidas] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_movimi_libro_entradas_salidas
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tbl_movimi_libro_entradas_salidas] ON
GO

SET IDENTITY_INSERT [dbo].[tbl_movimi_libro_entradas_salidas] OFF
GO


-- ----------------------------
-- Table structure for tbl_movimi_promo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_movimi_promo]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_movimi_promo]
GO

CREATE TABLE [dbo].[tbl_movimi_promo] (
  [id_movimi_promocion] int  NOT NULL,
  [fk_dui_policial] varchar(10) COLLATE Latin1_General_CI_AI  NULL,
  [fk_id_promocion] int  NULL,
  [fecha_registro] date  NULL
)
GO

ALTER TABLE [dbo].[tbl_movimi_promo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_movimi_promo
-- ----------------------------

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
  [fk_dui_policial] varchar(10) COLLATE Latin1_General_CI_AI  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_movimi_sansiones] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_movimi_sansiones
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_nilv_org
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_nilv_org]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_nilv_org]
GO

CREATE TABLE [dbo].[tbl_nilv_org] (
  [idNivelOrg] int  NOT NULL,
  [nombre] varchar(255) COLLATE Latin1_General_CI_AI  NULL,
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
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'1', N'JEFATURA DELEGACION', N'1', N'0', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'2', N'UNIDAD DE INVESTIGACION
DISCIPLINARIA', N'1', N'1', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'3', N'SUBJEFATURA', N'2', N'0', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'4', N'SECCION DE INFORMACION Y
ESTADISTICAS POLICIALES', N'2', N'1', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'5', N'DEPARTAMENTO DE SEGURIDAD
PUBLICA URBANA', N'2', N'2', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'6', N'SECCION TRANSITO TERRESTRE', N'2', N'2', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'7', N'SECCION DE EMERGENCIAS 911', N'2', N'2', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'8', N'SECCION DE SEGURIDAD PUBLICA
URBANA', N'2', N'2', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'9', N'UNIMUJER ODAC', N'2', N'2', N'3', N'1', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'10', N'ODAC FAMILIA', N'2', N'2', N'3', N'2', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'11', N'SECCION DE SERVICIOS
EXTRAORDINARIOS', N'2', N'2', N'4', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'12', N'UNIDAD DE BARTOLINAS', N'2', N'2', N'4', N'1', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'13', N'UNIDAD DE CUSTODIA DE
VEHICULOS', N'2', N'2', N'4', N'2', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'14', N'DEPARTAMENTO DE AREAS
ESPECIALIZADAS OPERATIVAS', N'2', N'3', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'15', N'SECCION TACTICA OPERATIVA', N'2', N'3', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'16', N'SECCION DE ARMAS Y
EXPLOSIVOS', N'2', N'3', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'17', N'SECCION DE CUMPLIMIENTO A
DISPOSICIONES JUDICIALES', N'2', N'3', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'18', N'SECCION PROTECCION A
VICTIMAS Y TESTIGOS', N'2', N'3', N'4', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'19', N'DEPARTAMENTO DE
ADMINISTRACION', N'2', N'4', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'20', N'SECCION DE LOGISTICA E
INFRAESTRUCTURA', N'2', N'4', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'21', N'SECCION DE BIENESTAR
POLICIAL Y TALENTO HUMANO', N'2', N'4', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'22', N'SECCION DE SALIUD POLICIAL', N'2', N'4', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'23', N'SECCION DE FINANCIERA', N'2', N'4', N'4', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'24', N'SECCION DE TECNOLOGIA DE
INFORMACION Y COMUNICACIONES', N'2', N'4', N'5', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'25', N'DEPARTAMENTO DE
INVESTIGACIONES', N'2', N'5', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'26', N'SECCION DE DELITOS CONTRA LA
VIDA', N'2', N'5', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'27', N'SECCION DE DELITOS CONTRA LA
MUJER', N'2', N'5', N'1', N'1', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'28', N'SECCION DE DELITOS CONTRA EL
PATRIMONIO', N'2', N'5', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'29', N'SECCION DE DELITOS
GENERALES', N'2', N'5', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'30', N'SECCION DE ANTINARCOTICOS', N'2', N'5', N'4', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'31', N'SECCION DE POLICIA TECNICA Y
CIENTIFICA', N'2', N'5', N'5', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'32', N'SECCION DE TECNICA FORENSE', N'2', N'5', N'6', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'33', N'DEPARTAMENTO DE
INTELIGENCIA', N'2', N'6', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'34', N'SECCION DE RECOPILACION DE
INFORMACION', N'2', N'6', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'35', N'SECCION DE ANALISIS Y
PRODUCCION DE INTELIGENCIA', N'2', N'6', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'36', N'DEPARTAMENTO DE SEGURIDAD
PUBLICA RURAL', N'2', N'7', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'37', N'SECCION DE SEGURIDAD PUBLICA
RURAL', N'2', N'7', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'38', N'SECCION DE COMANDO
CONJUNTO', N'2', N'7', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'39', N'SECCION DE MEDIO AMBIENTE', N'2', N'7', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'40', N'SUBDELEGACION DE SAN
VICENTE', N'2', N'8', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'41', N'SUBDELEGACION DE VERAPAZ', N'2', N'9', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'42', N'PUESTO GUADALUPE', N'2', N'9', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'43', N'PUESTO DE TEPETITAN', N'2', N'9', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'44', N'PUESTO DE SAN CAYETANO
ISTEPEQUE', N'2', N'9', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'45', N'SUBDELEGACION DE
APASTEPEQUE', N'2', N'10', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'46', N'PUESTO SAN ILDEFONSO', N'2', N'10', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'47', N'PUESTO DE SAN ESTEBAN
CATARINA', N'2', N'10', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'48', N'PUESTO DE SAN JACINTO', N'2', N'10', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'49', N'PUESTO DE SANTA CLARA', N'2', N'10', N'4', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'50', N'PUESTO PUENTE CUSCATLAN', N'2', N'10', N'5', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'51', N'SUBDELEGACION DE TECOLUCA', N'2', N'11', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'52', N'PUESTO DE SAN NICOLAS
LEMPA', N'2', N'11', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'53', N'PUESTO DE SAN CARLOS LEMPA', N'2', N'11', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'54', N'PUESTO DE SANTA CRUZ
PORRILLO', N'2', N'11', N'3', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'55', N'SUBDELEGACION SAN
SEBASTIAN', N'2', N'12', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'56', N'PUESTO DE SANTO DOMINGO', N'2', N'12', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'57', N'PUESTO DE SAN LORENZO', N'2', N'12', N'2', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'58', N'SD-SVIC SECCION DE
INVESTIGACION DISCIPLINARIA', N'2', N'8', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'59', N'SD-VER SECCION DE
INVESTIGACION DISCIPLINARIA', N'2', N'9', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'60', N'SD-APAS SECCION DE
INVESTIGACION DISCIPLINARIA', N'2', N'10', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'61', N'SD-TEC SECCION DE
INVESTIGACION DISCIPLINARIA', N'2', N'11', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'62', N'SD-SSEB SECCION DE
INVESTIGACION DISCIPLINARIA', N'2', N'12', N'1', N'0', NULL)
GO


-- ----------------------------
-- Table structure for tbl_nivel
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_nivel]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_nivel]
GO

CREATE TABLE [dbo].[tbl_nivel] (
  [id_nivel] int  NOT NULL,
  [nivel] varchar(10) COLLATE Latin1_General_CI_AI  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_nivel] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_nivel
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_nivel_academico
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_nivel_academico]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_nivel_academico]
GO

CREATE TABLE [dbo].[tbl_nivel_academico] (
  [id_nivel_academico] int  NOT NULL,
  [nivel_academico] int  NOT NULL,
  [fk_dui_policial] varchar(10) COLLATE Latin1_General_CI_AI  NOT NULL,
  [fk_id_carrera_oficio] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_nivel_academico] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_nivel_academico
-- ----------------------------

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
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'1', N'1', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'2', N'1', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'3', N'1', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'4', N'1', N'4')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'5', N'1', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'6', N'1', N'6')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'7', N'1', N'7')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'8', N'2', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'9', N'2', N'8')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'10', N'2', N'9')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'11', N'2', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'12', N'3', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'13', N'3', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'14', N'3', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'15', N'3', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'16', N'3', N'4')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'17', N'4', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'18', N'4', N'10')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'19', N'4', N'11')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'20', N'4', N'12')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'21', N'5', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'22', N'5', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'23', N'5', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'24', N'5', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'25', N'6', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'26', N'6', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'27', N'6', N'13')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'28', N'6', N'14')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'29', N'6', N'15')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'30', N'6', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'31', N'6', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'32', N'6', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'33', N'6', N'18')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'34', N'7', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'35', N'7', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'36', N'7', N'15')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'37', N'7', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'38', N'7', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'39', N'7', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'40', N'7', N'18')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'41', N'8', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'42', N'8', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'43', N'8', N'15')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'44', N'8', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'45', N'8', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'46', N'8', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'47', N'8', N'18')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'48', N'8', N'19')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'49', N'9', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'50', N'9', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'51', N'9', N'20')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'52', N'10', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'53', N'10', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'54', N'10', N'20')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'55', N'11', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'56', N'11', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'57', N'11', N'21')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'58', N'12', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'59', N'12', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'60', N'12', N'22')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'61', N'12', N'23')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'62', N'13', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'63', N'13', N'22')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'64', N'14', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'65', N'14', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'66', N'14', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'67', N'14', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'68', N'15', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'69', N'15', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'70', N'15', N'24')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'71', N'16', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'72', N'16', N'25')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'73', N'16', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'74', N'17', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'75', N'17', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'76', N'17', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'77', N'18', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'78', N'18', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'79', N'18', N'17')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'80', N'19', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'81', N'19', N'5')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'82', N'19', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'83', N'19', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'84', N'20', N'18')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'85', N'20', N'15')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'86', N'20', N'26')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'87', N'20', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'88', N'21', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'89', N'21', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'90', N'21', N'28')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'91', N'22', N'29')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'92', N'22', N'30')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'93', N'22', N'31')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'94', N'22', N'32')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'95', N'22', N'33')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'96', N'22', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'97', N'22', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'98', N'23', N'34')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'99', N'23', N'35')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'100', N'23', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'101', N'24', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'102', N'25', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'103', N'25', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'104', N'25', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'105', N'25', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'106', N'26', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'107', N'26', N'36')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'108', N'26', N'37')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'109', N'27', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'200', N'27', N'36')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'201', N'27', N'37')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'202', N'28', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'203', N'28', N'36')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'204', N'28', N'37')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'205', N'29', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'206', N'29', N'36')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'207', N'29', N'37')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'208', N'30', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'209', N'30', N'36')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'210', N'30', N'37')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'211', N'31', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'212', N'31', N'36')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'213', N'31', N'37')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'214', N'32', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'215', N'32', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'216', N'32', N'36')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'217', N'32', N'37')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'218', N'33', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'219', N'33', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'220', N'33', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'221', N'33', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'222', N'34', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'223', N'34', N'38')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'224', N'35', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'225', N'35', N'38')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'226', N'35', N'39')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'227', N'36', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'228', N'36', N'27')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'229', N'36', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'230', N'36', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'231', N'37', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'232', N'37', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'233', N'37', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'234', N'38', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'235', N'38', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'236', N'38', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'237', N'39', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'238', N'39', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'239', N'39', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'240', N'40', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'241', N'40', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'242', N'40', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'243', N'40', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'244', N'40', N'4')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'245', N'40', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'246', N'40', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'247', N'41', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'248', N'41', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'249', N'41', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'250', N'41', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'251', N'41', N'4')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'252', N'41', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'253', N'41', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'254', N'45', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'255', N'45', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'256', N'45', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'257', N'45', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'258', N'45', N'4')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'259', N'45', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'260', N'45', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'261', N'51', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'262', N'51', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'263', N'51', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'264', N'51', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'265', N'51', N'4')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'266', N'51', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'267', N'51', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'268', N'55', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'269', N'55', N'3')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'270', N'55', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'271', N'55', N'2')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'272', N'55', N'4')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'273', N'55', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'274', N'55', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'275', N'58', N'8')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'276', N'58', N'9')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'277', N'59', N'8')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'278', N'59', N'9')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'279', N'60', N'8')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'280', N'60', N'9')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'281', N'61', N'8')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'282', N'61', N'9')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'283', N'62', N'8')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'284', N'62', N'9')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'285', N'42', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'286', N'42', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'287', N'42', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'288', N'42', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'289', N'43', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'290', N'43', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'291', N'43', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'292', N'43', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'293', N'44', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'294', N'44', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'295', N'44', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'296', N'44', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'297', N'46', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'298', N'46', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'299', N'46', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'300', N'46', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'301', N'47', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'302', N'47', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'303', N'47', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'304', N'47', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'305', N'48', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'306', N'48', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'307', N'48', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'308', N'48', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'309', N'49', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'310', N'49', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'311', N'49', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'312', N'49', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'313', N'50', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'314', N'50', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'315', N'50', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'316', N'50', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'317', N'52', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'318', N'52', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'319', N'52', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'320', N'52', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'321', N'53', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'322', N'53', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'323', N'53', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'324', N'53', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'325', N'54', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'326', N'54', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'327', N'54', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'328', N'54', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'329', N'56', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'330', N'56', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'331', N'56', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'332', N'56', N'41')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'333', N'57', N'1')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'334', N'57', N'16')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'335', N'57', N'40')
GO

INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'336', N'57', N'41')
GO


-- ----------------------------
-- Table structure for tbl_oni_policial
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_oni_policial]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_oni_policial]
GO

CREATE TABLE [dbo].[tbl_oni_policial] (
  [num_oni] varchar(10) COLLATE Latin1_General_CI_AI  NOT NULL,
  [fecha_asignacion] date  NULL,
  [estado] bit  NULL,
  [fk_dui_policial] varchar(10) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_oni_policial] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_oni_policial
-- ----------------------------
INSERT INTO [dbo].[tbl_oni_policial] ([num_oni], [fecha_asignacion], [estado], [fk_dui_policial]) VALUES (N'1111', N'2021-10-28', N'1', N'01668595-4')
GO


-- ----------------------------
-- Table structure for tbl_permiso_con_sin_goce_sueldo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_permiso_con_sin_goce_sueldo]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo]
GO

CREATE TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] (
  [id_permiso_con_goce_sueldo] int  IDENTITY(1,1) NOT NULL,
  [fk_dui_solicitante] varchar(10) COLLATE Latin1_General_CI_AI  NULL,
  [fk_dui_jefe_inmediato] varchar(10) COLLATE Latin1_General_CI_AI  NULL,
  [fk_dui_jefe_inmediato_superior] varchar(10) COLLATE Latin1_General_CI_AI  NULL,
  [fecha_inicio] datetime  NULL,
  [fecha_final] datetime  NULL,
  [aprobado] tinyint  NULL,
  [id_motivo_permiso] int  NULL,
  [imagen] varchar(100) COLLATE Latin1_General_CI_AI  NULL,
  [observacion] varchar(150) COLLATE Latin1_General_CI_AI  NULL,
  [motivo] varchar(150) COLLATE Latin1_General_CI_AI  NULL,
  [fk_tipo_permiso] varchar(50) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_permiso_con_sin_goce_sueldo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tbl_permiso_con_sin_goce_sueldo] ON
GO

SET IDENTITY_INSERT [dbo].[tbl_permiso_con_sin_goce_sueldo] OFF
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
-- Records of tbl_permisos
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_promocion
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_promocion]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_promocion]
GO

CREATE TABLE [dbo].[tbl_promocion] (
  [id_promocion] int  NOT NULL,
  [anio_promocion] date  NULL,
  [numero_promocion] varchar(15) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_promocion] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_promocion
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_puesto
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_puesto]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_puesto]
GO

CREATE TABLE [dbo].[tbl_puesto] (
  [idPuesto] int  NOT NULL,
  [nombre] varchar(255) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_puesto] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_puesto
-- ----------------------------
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'1', N'JEFATURA')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'2', N'MOTORISTA')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'3', N'SECRETARIA')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'4', N'COLABORADOR ADMINISTRATIVO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'5', N'APOYO TECNICO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'6', N'EQUIPO DE COMUNICACIONES')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'7', N'ARCHIVO CENTRAL PEREFERICO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'8', N'INSTRUCTORES DISCIPLINARIOS')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'9', N'SECRETARIO DE ACTUACIONES')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'10', N'ANALISTA ESTRETAGICO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'11', N'RECOLECTOR DE INFORMACION')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'12', N'OPERADOR DE RADIO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'13', N'INSPECCIONES DE TRANSITO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'14', N'DILIGENCIADORES DE TRANSITO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'15', N'APOYO ADMINISTRATIVO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'16', N'ATENCION AL PUBLICO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'17', N'POLICIA OPERATIVO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'18', N'POLICIA CON FUNCION ADMINISTRATIVA')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'19', N'POLICIA PROGRAMAS PREVENTIVOS')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'20', N'POLICIA DE ATENCION DE CASOS')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'21', N'POLICIA DE ATENCION')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'22', N'POLICIA CUSTODIO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'23', N'CHEQUEO CLINICO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'24', N'POLICIA TACTICO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'25', N'POLICIA TECNICO OPERATIVO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'26', N'OBRERO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'27', N'APOYO TECNICO ADMINISTRATIVO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'28', N'COORDINADOR DE FORMACION PROFESIONAL')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'29', N'MEDICO GENERAL')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'30', N'ODONTOLOGO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'31', N'PSICOLOGO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'32', N'TRABAJADOR SOCIAL')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'33', N'ENFERMERA')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'34', N'FONDO CIRCULANTE DE MONTO FIJO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'35', N'PAGADURIA AUXILIAR')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'36', N'INVESTIGADORES')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'37', N'DILIGENCIADORES')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'38', N'APOYO TECNICO OPERATIVO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'39', N'ANALISTA')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'40', N'PERSONAL OPERATIVO')
GO

INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'41', N'PERSONAL OPERATIVO CON FUNCION ADMINISTRATIVA')
GO


-- ----------------------------
-- Table structure for tbl_rango
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_rango]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_rango]
GO

CREATE TABLE [dbo].[tbl_rango] (
  [id_rango] int  NOT NULL,
  [rango_policia] varchar(20) COLLATE Latin1_General_CI_AI  NOT NULL,
  [fk_nivel] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_rango] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_rango
-- ----------------------------

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
INSERT INTO [dbo].[tbl_rol] ([idrol], [nombrerol], [descripcion], [estado]) VALUES (N'202110271', N'Administrador', N'Superadministrador', N'1')
GO

INSERT INTO [dbo].[tbl_rol] ([idrol], [nombrerol], [descripcion], [estado]) VALUES (N'202110272', N'Delegacion', N'Rol de delegacion', N'1')
GO

INSERT INTO [dbo].[tbl_rol] ([idrol], [nombrerol], [descripcion], [estado]) VALUES (N'202110273', N'Nuevo Rol', N'Nuevo rol', N'2')
GO

INSERT INTO [dbo].[tbl_rol] ([idrol], [nombrerol], [descripcion], [estado]) VALUES (N'202110274', N'sfg', N'dfgh', N'0')
GO


-- ----------------------------
-- Table structure for tbl_sansiones
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_sansiones]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_sansiones]
GO

CREATE TABLE [dbo].[tbl_sansiones] (
  [id_sansiones] int  NOT NULL,
  [sansion] varchar(255) COLLATE Latin1_General_CI_AI  NOT NULL,
  [fk_id_faltas] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_sansiones] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_sansiones
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_telefono
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_telefono]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_telefono]
GO

CREATE TABLE [dbo].[tbl_telefono] (
  [id_tel] varchar(50) COLLATE Latin1_General_CI_AI  NOT NULL,
  [numero_telefono] varchar(15) COLLATE Latin1_General_CI_AI  NULL,
  [tipo] varchar(20) COLLATE Latin1_General_CI_AI  NULL,
  [fk_dui_policial] varchar(10) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tbl_telefono] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_telefono
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_tipo_vehiculo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_tipo_vehiculo]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_tipo_vehiculo]
GO

CREATE TABLE [dbo].[tbl_tipo_vehiculo] (
  [idTipoVehiculo] int  NOT NULL,
  [tipoVehiculo] varchar(50) COLLATE Latin1_General_CI_AI  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_tipo_vehiculo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_tipo_vehiculo
-- ----------------------------

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
  [fk_dui] varchar(10) COLLATE Latin1_General_CI_AI  NULL,
  [token] varchar(100) COLLATE Latin1_General_CI_AI  NULL,
  [rolid] int  NULL,
  [datecreated] datetime  NULL,
  [estado] int  NULL
)
GO

ALTER TABLE [dbo].[tbl_usuario] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_usuario
-- ----------------------------
-- ----------------------------
-- Table structure for tbl_vehiculo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_vehiculo]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_vehiculo]
GO

CREATE TABLE [dbo].[tbl_vehiculo] (
  [numero_equipo] int  NOT NULL,
  [placa] varchar(12) COLLATE Latin1_General_CI_AI  NOT NULL,
  [legalidad_vehiculo] varchar(50) COLLATE Latin1_General_CI_AI  NOT NULL,
  [funcion] varchar(35) COLLATE Latin1_General_CI_AI  NOT NULL,
  [anioVehiculo] varchar(4) COLLATE Latin1_General_CI_AI  NOT NULL,
  [fk_tipoVehiculo] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tbl_vehiculo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_vehiculo
-- ----------------------------

-- ----------------------------
-- Table structure for tblo_estado_vehiculo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblo_estado_vehiculo]') AND type IN ('U'))
	DROP TABLE [dbo].[tblo_estado_vehiculo]
GO

CREATE TABLE [dbo].[tblo_estado_vehiculo] (
  [idEstadoVehiculo] int  NOT NULL,
  [nombreEstado] varchar(50) COLLATE Latin1_General_CI_AI  NOT NULL
)
GO

ALTER TABLE [dbo].[tblo_estado_vehiculo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tblo_estado_vehiculo
-- ----------------------------

-- ----------------------------
-- Table structure for tipoNivelOrg
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoNivelOrg]') AND type IN ('U'))
	DROP TABLE [dbo].[tipoNivelOrg]
GO

CREATE TABLE [dbo].[tipoNivelOrg] (
  [idtipo] int  NOT NULL,
  [nombretipo] varchar(255) COLLATE Latin1_General_CI_AI  NULL
)
GO

ALTER TABLE [dbo].[tipoNivelOrg] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tipoNivelOrg
-- ----------------------------

-- ----------------------------
-- Auto increment value for tbl_actividades
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tbl_actividades]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table tbl_actividades
-- ----------------------------
ALTER TABLE [dbo].[tbl_actividades] ADD CONSTRAINT [PK__tbl_acti__05041970B1C8834E] PRIMARY KEY CLUSTERED ([id_actividad_pk])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_arma
-- ----------------------------
ALTER TABLE [dbo].[tbl_arma] ADD CONSTRAINT [PK__tbl_arma__8A8C42710CA23ACD] PRIMARY KEY CLUSTERED ([id_arma ])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_asig_pol_puesto
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_pol_puesto] ADD CONSTRAINT [PK__tbl_asig__B51C87461B57FD3A] PRIMARY KEY CLUSTERED ([id_asig_pol_puesto])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tbl_asig_rango
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tbl_asig_rango]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table tbl_asig_rango
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_rango] ADD CONSTRAINT [PK__tbl_asig__07B20B4C580C07F3] PRIMARY KEY CLUSTERED ([id_asig_rango])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_asig_uniforme
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_uniforme] ADD CONSTRAINT [PK__tbl_asig__666B9B9528A14263] PRIMARY KEY CLUSTERED ([id_asig_uniforme_pol])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_asig_vehi_delegacion
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_vehi_delegacion] ADD CONSTRAINT [PK__tbl_asig__67DAC62D5739A5B0] PRIMARY KEY CLUSTERED ([id_asig_vehi_delegacion])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tbl_asignacion_actividad_operativo
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tbl_asignacion_actividad_operativo]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table tbl_asignacion_actividad_operativo
-- ----------------------------
ALTER TABLE [dbo].[tbl_asignacion_actividad_operativo] ADD CONSTRAINT [PK__tbl_asig__7FBDABA587A99C58] PRIMARY KEY CLUSTERED ([id_asignacion_actividad_operativo_pk])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_capacitaciones_cursos
-- ----------------------------
ALTER TABLE [dbo].[tbl_capacitaciones_cursos] ADD CONSTRAINT [PK__tbl_capa__53B8E698D15FEE22] PRIMARY KEY CLUSTERED ([id_capacitaciones_cursos])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_carrera_oficio
-- ----------------------------
ALTER TABLE [dbo].[tbl_carrera_oficio] ADD CONSTRAINT [PK__tbl_carr__33AA188F480DAE78] PRIMARY KEY CLUSTERED ([id_carrera_oficio])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_carrera_policial_terminada
-- ----------------------------
ALTER TABLE [dbo].[tbl_carrera_policial_terminada] ADD CONSTRAINT [PK__tbl_carr__668CDCA7DF65BCEA] PRIMARY KEY CLUSTERED ([id_carrera_p_t])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_datos_personales
-- ----------------------------
ALTER TABLE [dbo].[tbl_datos_personales] ADD CONSTRAINT [PK__tbl_dato__213410F8A824524A] PRIMARY KEY CLUSTERED ([dui_pk])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_descrip_unifo
-- ----------------------------
ALTER TABLE [dbo].[tbl_descrip_unifo] ADD CONSTRAINT [PK__tbl_desc__49C4372DAE8CA168] PRIMARY KEY CLUSTERED ([id_descrip_uniforme])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_detalle_accesorios
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_accesorios] ADD CONSTRAINT [PK__tbl_deta__549C3D56944E2538] PRIMARY KEY CLUSTERED ([id_detalle_accesorios])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_detalle_estado
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_estado] ADD CONSTRAINT [PK__tbl_deta__704D614788FB7D75] PRIMARY KEY CLUSTERED ([iddetalleestado])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_detalle_placa_onis
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_placa_onis] ADD CONSTRAINT [PK__tbl_deta__1A0020E0C4278595] PRIMARY KEY CLUSTERED ([id_detalle_placa])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_detalle_unifo_pol
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_unifo_pol] ADD CONSTRAINT [PK__tbl_deta__AC01D582FCEDA310] PRIMARY KEY CLUSTERED ([id_detalle_uniforme])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_detallediscapacidad
-- ----------------------------
ALTER TABLE [dbo].[tbl_detallediscapacidad] ADD CONSTRAINT [PK__tbl_deta__FD9551A2EE57CE06] PRIMARY KEY CLUSTERED ([iddetallediscapacidad])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_discapacidad
-- ----------------------------
ALTER TABLE [dbo].[tbl_discapacidad] ADD CONSTRAINT [PK__tbl_disc__FF2363938C0D52D1] PRIMARY KEY CLUSTERED ([iddiscapacidad])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_enfermedades
-- ----------------------------
ALTER TABLE [dbo].[tbl_enfermedades] ADD CONSTRAINT [PK__tbl_enfe__D027B3A0CC09A040] PRIMARY KEY CLUSTERED ([id_enfermedad])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_especialidades
-- ----------------------------
ALTER TABLE [dbo].[tbl_especialidades] ADD CONSTRAINT [PK__tbl_espe__C1D1376344A323AB] PRIMARY KEY CLUSTERED ([id_especialidad])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_faltas
-- ----------------------------
ALTER TABLE [dbo].[tbl_faltas] ADD CONSTRAINT [PK__tbl_falt__3AC182559876F686] PRIMARY KEY CLUSTERED ([id_faltas])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_familiares
-- ----------------------------
ALTER TABLE [dbo].[tbl_familiares] ADD CONSTRAINT [PK__tbl_fami__6D6EFCB47A2174C8] PRIMARY KEY CLUSTERED ([id_familiar])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_habilidad_tecnologica
-- ----------------------------
ALTER TABLE [dbo].[tbl_habilidad_tecnologica] ADD CONSTRAINT [PK__tbl_habi__2D9AC89E906BE3B2] PRIMARY KEY CLUSTERED ([id_habilidad_tecnologica])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tbl_libro_entradas_salidas
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tbl_libro_entradas_salidas]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table tbl_libro_entradas_salidas
-- ----------------------------
ALTER TABLE [dbo].[tbl_libro_entradas_salidas] ADD CONSTRAINT [PK__tbl_libr__0652DE8EE6472DA2] PRIMARY KEY CLUSTERED ([id_libro_entradas_salidas])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_licencia_arma
-- ----------------------------
ALTER TABLE [dbo].[tbl_licencia_arma] ADD CONSTRAINT [PK__tbl_lice__527616B7212348A1] PRIMARY KEY CLUSTERED ([ id_licencia_arma])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_licencia_conducir
-- ----------------------------
ALTER TABLE [dbo].[tbl_licencia_conducir] ADD CONSTRAINT [PK__tbl_lice__EEB669B031DD89E2] PRIMARY KEY CLUSTERED ([id_licencia_conducir])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_modulo
-- ----------------------------
ALTER TABLE [dbo].[tbl_modulo] ADD CONSTRAINT [PK__tbl_modu__40C18A8C22C33B06] PRIMARY KEY CLUSTERED ([idmodulo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tbl_motivo_permiso
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tbl_motivo_permiso]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table tbl_motivo_permiso
-- ----------------------------
ALTER TABLE [dbo].[tbl_motivo_permiso] ADD CONSTRAINT [PK__tbl_moti__5A6B1C3D7F417E95] PRIMARY KEY CLUSTERED ([id_motivo_permiso])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movi_enfermedad
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_enfermedad] ADD CONSTRAINT [PK__tbl_movi__DCC8F8065CC1E0E4] PRIMARY KEY CLUSTERED ([id_movi_mi_enfermedad])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movi_especialidad
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_especialidad] ADD CONSTRAINT [PK__tbl_movi__B6D2CB3C755B8F38] PRIMARY KEY CLUSTERED ([id_movi_mi_especialidad])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movi_ingreso
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_ingreso] ADD CONSTRAINT [PK__tbl_movi__5D246BD28A50A9D2] PRIMARY KEY CLUSTERED ([id_movi_mi_ingreso])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movi_salario
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_salario] ADD CONSTRAINT [PK__tbl_movi__F3379275E231A109] PRIMARY KEY CLUSTERED ([id_movi_mi_salario])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movimi_arma_asig
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_arma_asig] ADD CONSTRAINT [PK__tbl_movi__8963101A45CC4EC8] PRIMARY KEY CLUSTERED ([id_arma_asignada])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tbl_movimi_asignacion_actividad_operativo
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tbl_movimi_asignacion_actividad_operativo]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table tbl_movimi_asignacion_actividad_operativo
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo] ADD CONSTRAINT [PK__tbl_movi__042F4C61C3E87007] PRIMARY KEY CLUSTERED ([id_movimi_asignacion_actividad_operativo_pk])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movimi_cap_cursos
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_cap_cursos] ADD CONSTRAINT [PK__tbl_movi__01A28648DCEDE9D6] PRIMARY KEY CLUSTERED ([id_movimi_cap_cursos])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movimi_habilidad_tec
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_habilidad_tec] ADD CONSTRAINT [PK__tbl_movi__301A5E88C3F9DCB9] PRIMARY KEY CLUSTERED ([id_movimi_hab_tec])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tbl_movimi_libro_entradas_salidas
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tbl_movimi_libro_entradas_salidas]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table tbl_movimi_libro_entradas_salidas
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_libro_entradas_salidas] ADD CONSTRAINT [PK__tbl_movi__3EF1D5F968F6C29A] PRIMARY KEY CLUSTERED ([id_movimi_libro_entradas_salidas ])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movimi_promo
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_promo] ADD CONSTRAINT [PK__tbl_movi__45048ADE7F699791] PRIMARY KEY CLUSTERED ([id_movimi_promocion])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_movimi_sansiones
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_sansiones] ADD CONSTRAINT [PK__tbl_movi__CB0F8F9DDACD8AE5] PRIMARY KEY CLUSTERED ([id_movimi_sansion])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_nilv_org
-- ----------------------------
ALTER TABLE [dbo].[tbl_nilv_org] ADD CONSTRAINT [PK__tbl_nilv__EB3968FBF84E8861] PRIMARY KEY CLUSTERED ([idNivelOrg])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_nivel
-- ----------------------------
ALTER TABLE [dbo].[tbl_nivel] ADD CONSTRAINT [PK__tbl_nive__9CAF1C5308E0045A] PRIMARY KEY CLUSTERED ([id_nivel])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_nivel_academico
-- ----------------------------
ALTER TABLE [dbo].[tbl_nivel_academico] ADD CONSTRAINT [PK__tbl_nive__6F76BDC01186801C] PRIMARY KEY CLUSTERED ([id_nivel_academico])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_nivel_puest
-- ----------------------------
ALTER TABLE [dbo].[tbl_nivel_puest] ADD CONSTRAINT [PK__tbl_nive__820DC77EBB169634] PRIMARY KEY CLUSTERED ([idNivelOrgPuesto])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_oni_policial
-- ----------------------------
ALTER TABLE [dbo].[tbl_oni_policial] ADD CONSTRAINT [PK__tbl_oni___C543A2DB0AC99C71] PRIMARY KEY CLUSTERED ([num_oni])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tbl_permiso_con_sin_goce_sueldo
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tbl_permiso_con_sin_goce_sueldo]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table tbl_permiso_con_sin_goce_sueldo
-- ----------------------------
ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] ADD CONSTRAINT [PK__tbl_perm__3358D2236E2D3307] PRIMARY KEY CLUSTERED ([id_permiso_con_goce_sueldo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_permisos
-- ----------------------------
ALTER TABLE [dbo].[tbl_permisos] ADD CONSTRAINT [PK__tbl_perm__85C7F9006E118A8F] PRIMARY KEY CLUSTERED ([idpermiso])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_promocion
-- ----------------------------
ALTER TABLE [dbo].[tbl_promocion] ADD CONSTRAINT [PK__tbl_prom__F89308E0A7374472] PRIMARY KEY CLUSTERED ([id_promocion])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_puesto
-- ----------------------------
ALTER TABLE [dbo].[tbl_puesto] ADD CONSTRAINT [PK__tbl_pues__ADF48F19A33471B5] PRIMARY KEY CLUSTERED ([idPuesto])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_rango
-- ----------------------------
ALTER TABLE [dbo].[tbl_rango] ADD CONSTRAINT [PK__tbl_rang__A071F9CF77666A6B] PRIMARY KEY CLUSTERED ([id_rango])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_rol
-- ----------------------------
ALTER TABLE [dbo].[tbl_rol] ADD CONSTRAINT [PK__tbl_rol__24C6BB20AA5141F9] PRIMARY KEY CLUSTERED ([idrol])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_sansiones
-- ----------------------------
ALTER TABLE [dbo].[tbl_sansiones] ADD CONSTRAINT [PK__tbl_sans__245E2916CFB179AF] PRIMARY KEY CLUSTERED ([id_sansiones])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_telefono
-- ----------------------------
ALTER TABLE [dbo].[tbl_telefono] ADD CONSTRAINT [PK__tbl_tele__6A29A77FB92D1FC8] PRIMARY KEY CLUSTERED ([id_tel])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_tipo_vehiculo
-- ----------------------------
ALTER TABLE [dbo].[tbl_tipo_vehiculo] ADD CONSTRAINT [PK__tbl_tipo__429A3B81D4319BC3] PRIMARY KEY CLUSTERED ([idTipoVehiculo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_usuario
-- ----------------------------
ALTER TABLE [dbo].[tbl_usuario] ADD CONSTRAINT [PK__tbl_usua__080A9743F88F4661] PRIMARY KEY CLUSTERED ([idusuario])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_vehiculo
-- ----------------------------
ALTER TABLE [dbo].[tbl_vehiculo] ADD CONSTRAINT [PK__tbl_vehi__BBB993C604A6133A] PRIMARY KEY CLUSTERED ([numero_equipo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblo_estado_vehiculo
-- ----------------------------
ALTER TABLE [dbo].[tblo_estado_vehiculo] ADD CONSTRAINT [PK__tblo_est__EB43E7F9D8AED15F] PRIMARY KEY CLUSTERED ([idEstadoVehiculo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tipoNivelOrg
-- ----------------------------
ALTER TABLE [dbo].[tipoNivelOrg] ADD CONSTRAINT [PK__tipoNive__71B8F402DEE66214] PRIMARY KEY CLUSTERED ([idtipo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_asig_pol_puesto
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_pol_puesto] ADD CONSTRAINT [FK__tbl_asig___fk_id__390E6C01] FOREIGN KEY ([fk_id_nivel_org_puest]) REFERENCES [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_asig_pol_puesto] ADD CONSTRAINT [FK_puesto_pol] FOREIGN KEY ([fk_oni_pol]) REFERENCES [dbo].[tbl_oni_policial] ([num_oni]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_asig_rango
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_rango] ADD CONSTRAINT [FK__tbl_asig___fk_on__3A02903A] FOREIGN KEY ([fk_oni_policial]) REFERENCES [dbo].[tbl_oni_policial] ([num_oni]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_asig_rango] ADD CONSTRAINT [FK__tbl_asig___fk_ra__3AF6B473] FOREIGN KEY ([fk_rango]) REFERENCES [dbo].[tbl_rango] ([id_rango]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_asig_uniforme
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_uniforme] ADD CONSTRAINT [FK__tbl_asig___fk_on__3BEAD8AC] FOREIGN KEY ([fk_oni_poli_entrega]) REFERENCES [dbo].[tbl_oni_policial] ([num_oni]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_asig_uniforme] ADD CONSTRAINT [FK__tbl_asig___fk_on__3CDEFCE5] FOREIGN KEY ([fk_oni_poli_recibe]) REFERENCES [dbo].[tbl_oni_policial] ([num_oni]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_asig_vehi_delegacion
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_vehi_delegacion] ADD CONSTRAINT [FK__tbl_asig___fk_id__3DD3211E] FOREIGN KEY ([fk_id_nivel_org]) REFERENCES [dbo].[tbl_nilv_org] ([idNivelOrg]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_asig_vehi_delegacion] ADD CONSTRAINT [FK__tbl_asig___fk_nu__3EC74557] FOREIGN KEY ([fk_numero_equipo]) REFERENCES [dbo].[tbl_vehiculo] ([numero_equipo]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_asignacion_actividad_operativo
-- ----------------------------
ALTER TABLE [dbo].[tbl_asignacion_actividad_operativo] ADD CONSTRAINT [FK__tbl_asign__id_ac__3FBB6990] FOREIGN KEY ([id_actividad_fk]) REFERENCES [dbo].[tbl_actividades] ([id_actividad_pk]) ON DELETE CASCADE ON UPDATE CASCADE
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_carrera_policial_terminada
-- ----------------------------
ALTER TABLE [dbo].[tbl_carrera_policial_terminada] ADD CONSTRAINT [FK__tbl_carre__fk_du__40AF8DC9] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_detalle_accesorios
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_accesorios] ADD CONSTRAINT [FK__tbl_detal__fk_as__41A3B202] FOREIGN KEY ([fk_asig_uniforme_pol]) REFERENCES [dbo].[tbl_asig_uniforme] ([id_asig_uniforme_pol]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_detalle_accesorios] ADD CONSTRAINT [FK__tbl_detal__fk_de__4297D63B] FOREIGN KEY ([fk_descrip_unifo_pol]) REFERENCES [dbo].[tbl_descrip_unifo] ([id_descrip_uniforme]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_detalle_estado
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_estado] ADD CONSTRAINT [FK__tbl_detal__fk_Es__438BFA74] FOREIGN KEY ([fk_EstadoVehiculo]) REFERENCES [dbo].[tblo_estado_vehiculo] ([idEstadoVehiculo]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[tbl_detalle_estado] ADD CONSTRAINT [FK__tbl_detal__fk_nu__44801EAD] FOREIGN KEY ([fk_numeroEquipo]) REFERENCES [dbo].[tbl_vehiculo] ([numero_equipo]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_detalle_placa_onis
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_placa_onis] ADD CONSTRAINT [FK__tbl_detal__fk_id__457442E6] FOREIGN KEY ([fk_id_asig_unifo_pol]) REFERENCES [dbo].[tbl_asig_uniforme] ([id_asig_uniforme_pol]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_detalle_placa_onis] ADD CONSTRAINT [FK__tbl_detal__fk_id__4668671F] FOREIGN KEY ([fk_id_descrip_unifo]) REFERENCES [dbo].[tbl_descrip_unifo] ([id_descrip_uniforme]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_detalle_unifo_pol
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_unifo_pol] ADD CONSTRAINT [FK__tbl_detal__fk_id__475C8B58] FOREIGN KEY ([fk_id_asig_uniforme_pol]) REFERENCES [dbo].[tbl_asig_uniforme] ([id_asig_uniforme_pol]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_detalle_unifo_pol] ADD CONSTRAINT [FK__tbl_detal__fk_id__4850AF91] FOREIGN KEY ([fk_id_descrip_unifor]) REFERENCES [dbo].[tbl_descrip_unifo] ([id_descrip_uniforme]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_detallediscapacidad
-- ----------------------------
ALTER TABLE [dbo].[tbl_detallediscapacidad] ADD CONSTRAINT [FK__tbl_detal__duiag__4944D3CA] FOREIGN KEY ([duiagente]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[tbl_detallediscapacidad] ADD CONSTRAINT [FK__tbl_detal__iddis__4A38F803] FOREIGN KEY ([iddiscapacidad]) REFERENCES [dbo].[tbl_discapacidad] ([iddiscapacidad]) ON DELETE CASCADE ON UPDATE CASCADE
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_familiares
-- ----------------------------
ALTER TABLE [dbo].[tbl_familiares] ADD CONSTRAINT [FK__tbl_famil__fk_du__4B2D1C3C] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_licencia_arma
-- ----------------------------
ALTER TABLE [dbo].[tbl_licencia_arma] ADD CONSTRAINT [FK__tbl_licen__fk_du__4C214075] FOREIGN KEY ([fk_dui_policial_licencia_arma]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_licencia_conducir
-- ----------------------------
ALTER TABLE [dbo].[tbl_licencia_conducir] ADD CONSTRAINT [FK__tbl_licen__fk_du__4D1564AE] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movi_enfermedad
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_enfermedad] ADD CONSTRAINT [FK__tbl_movi___fk_du__4E0988E7] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movi_enfermedad] ADD CONSTRAINT [FK__tbl_movi___fk_id__4EFDAD20] FOREIGN KEY ([fk_id_enfermedad]) REFERENCES [dbo].[tbl_enfermedades] ([id_enfermedad]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movi_especialidad
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_especialidad] ADD CONSTRAINT [FK__tbl_movi___fk_du__4FF1D159] FOREIGN KEY ([fk_dui_policia]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movi_especialidad] ADD CONSTRAINT [FK__tbl_movi___fk_id__50E5F592] FOREIGN KEY ([fk_id_especialidad]) REFERENCES [dbo].[tbl_especialidades] ([id_especialidad]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movi_ingreso
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_ingreso] ADD CONSTRAINT [FK__tbl_movi___fk_du__51DA19CB] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movi_salario
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_salario] ADD CONSTRAINT [FK__tbl_movi___fk_du__52CE3E04] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movimi_arma_asig
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_arma_asig] ADD CONSTRAINT [FK__tbl_movim__fk_du__53C2623D] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movimi_arma_asig] ADD CONSTRAINT [FK__tbl_movim__fk_id__54B68676] FOREIGN KEY ([fk_id_arma]) REFERENCES [dbo].[tbl_arma] ([id_arma ]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movimi_asignacion_actividad_operativo
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo] ADD CONSTRAINT [FK__tbl_movim__dui_f__55AAAAAF] FOREIGN KEY ([dui_fk]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo] ADD CONSTRAINT [FK__tbl_movim__id_as__569ECEE8] FOREIGN KEY ([id_asignacion_actividad_operativo_fk]) REFERENCES [dbo].[tbl_asignacion_actividad_operativo] ([id_asignacion_actividad_operativo_pk]) ON DELETE CASCADE ON UPDATE CASCADE
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movimi_cap_cursos
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_cap_cursos] ADD CONSTRAINT [FK__tbl_movim__fk_du__5792F321] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movimi_cap_cursos] ADD CONSTRAINT [FK__tbl_movim__fk_id__5887175A] FOREIGN KEY ([fk_id_capacitaciones_cursos]) REFERENCES [dbo].[tbl_capacitaciones_cursos] ([id_capacitaciones_cursos]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movimi_habilidad_tec
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_habilidad_tec] ADD CONSTRAINT [FK__tbl_movim__fk_du__597B3B93] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movimi_habilidad_tec] ADD CONSTRAINT [FK__tbl_movim__fk_id__5A6F5FCC] FOREIGN KEY ([fk_id_hab_tec]) REFERENCES [dbo].[tbl_habilidad_tecnologica] ([id_habilidad_tecnologica]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movimi_libro_entradas_salidas
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_libro_entradas_salidas] ADD CONSTRAINT [FK__tbl_movim__fk_du__5B638405] FOREIGN KEY ([fk_dui]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movimi_libro_entradas_salidas] ADD CONSTRAINT [FK__tbl_movim__fk_id__5C57A83E] FOREIGN KEY ([fk_id_libro_entradas_salidas]) REFERENCES [dbo].[tbl_libro_entradas_salidas] ([id_libro_entradas_salidas]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movimi_promo
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_promo] ADD CONSTRAINT [FK__tbl_movim__fk_du__5D4BCC77] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movimi_promo] ADD CONSTRAINT [FK__tbl_movim__fk_id__5E3FF0B0] FOREIGN KEY ([fk_id_promocion]) REFERENCES [dbo].[tbl_promocion] ([id_promocion]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_movimi_sansiones
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_sansiones] ADD CONSTRAINT [FK__tbl_movim__fk_du__5F3414E9] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_movimi_sansiones] ADD CONSTRAINT [FK__tbl_movim__fk_id__60283922] FOREIGN KEY ([fk_id_sansion]) REFERENCES [dbo].[tbl_sansiones] ([id_sansiones]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_nilv_org
-- ----------------------------
ALTER TABLE [dbo].[tbl_nilv_org] ADD CONSTRAINT [FK__tbl_nilv___tipoN__611C5D5B] FOREIGN KEY ([tipoNivel]) REFERENCES [dbo].[tipoNivelOrg] ([idtipo]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_nivel_academico
-- ----------------------------
ALTER TABLE [dbo].[tbl_nivel_academico] ADD CONSTRAINT [FK__tbl_nivel__fk_du__62108194] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_nivel_academico] ADD CONSTRAINT [FK__tbl_nivel__fk_id__6304A5CD] FOREIGN KEY ([fk_id_carrera_oficio]) REFERENCES [dbo].[tbl_carrera_oficio] ([id_carrera_oficio]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_nivel_puest
-- ----------------------------
ALTER TABLE [dbo].[tbl_nivel_puest] ADD CONSTRAINT [FK__tbl_nivel__idNiv__63F8CA06] FOREIGN KEY ([idNivelOrg]) REFERENCES [dbo].[tbl_nilv_org] ([idNivelOrg]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_nivel_puest] ADD CONSTRAINT [FK__tbl_nivel__idPue__64ECEE3F] FOREIGN KEY ([idPuesto]) REFERENCES [dbo].[tbl_puesto] ([idPuesto]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_oni_policial
-- ----------------------------
ALTER TABLE [dbo].[tbl_oni_policial] ADD CONSTRAINT [FK__tbl_oni_p__fk_du__65E11278] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_permiso_con_sin_goce_sueldo
-- ----------------------------
ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] ADD CONSTRAINT [FK__tbl_permi__fk_du__66D536B1] FOREIGN KEY ([fk_dui_jefe_inmediato]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] ADD CONSTRAINT [FK__tbl_permi__fk_du__67C95AEA] FOREIGN KEY ([fk_dui_jefe_inmediato_superior]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] ADD CONSTRAINT [FK__tbl_permi__fk_du__68BD7F23] FOREIGN KEY ([fk_dui_solicitante]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] ADD CONSTRAINT [FK__tbl_permi__id_mo__69B1A35C] FOREIGN KEY ([id_motivo_permiso]) REFERENCES [dbo].[tbl_motivo_permiso] ([id_motivo_permiso]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_permisos
-- ----------------------------
ALTER TABLE [dbo].[tbl_permisos] ADD CONSTRAINT [FK__tbl_permi__modul__6AA5C795] FOREIGN KEY ([moduloid]) REFERENCES [dbo].[tbl_modulo] ([idmodulo]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_permisos] ADD CONSTRAINT [FK__tbl_permi__rolid__6B99EBCE] FOREIGN KEY ([rolid]) REFERENCES [dbo].[tbl_rol] ([idrol]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_rango
-- ----------------------------
ALTER TABLE [dbo].[tbl_rango] ADD CONSTRAINT [FK__tbl_rango__fk_ni__6C8E1007] FOREIGN KEY ([fk_nivel]) REFERENCES [dbo].[tbl_nivel] ([id_nivel]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_sansiones
-- ----------------------------
ALTER TABLE [dbo].[tbl_sansiones] ADD CONSTRAINT [FK__tbl_sansi__fk_id__6D823440] FOREIGN KEY ([fk_id_faltas]) REFERENCES [dbo].[tbl_faltas] ([id_faltas]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_telefono
-- ----------------------------
ALTER TABLE [dbo].[tbl_telefono] ADD CONSTRAINT [FK__tbl_telef__fk_du__6E765879] FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_usuario
-- ----------------------------
ALTER TABLE [dbo].[tbl_usuario] ADD CONSTRAINT [FK__tbl_usuar__fk_du__6F6A7CB2] FOREIGN KEY ([fk_dui]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tbl_usuario] ADD CONSTRAINT [FK__tbl_usuar__rolid__705EA0EB] FOREIGN KEY ([rolid]) REFERENCES [dbo].[tbl_rol] ([idrol]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tbl_vehiculo
-- ----------------------------
ALTER TABLE [dbo].[tbl_vehiculo] ADD CONSTRAINT [FK__tbl_vehic__fk_ti__7152C524] FOREIGN KEY ([fk_tipoVehiculo]) REFERENCES [dbo].[tbl_tipo_vehiculo] ([idTipoVehiculo]) ON DELETE CASCADE ON UPDATE CASCADE
GO

