/*
Navicat SQL Server Data Transfer

Source Server         : sqlserver
Source Server Version : 150000
Source Host           : Dany:1433
Source Database       : db_pnc
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 150000
File Encoding         : 65001

Date: 2021-10-31 13:26:36
*/


-- ----------------------------
-- Table structure for tbl_actividades
-- ----------------------------
DROP TABLE [dbo].[tbl_actividades]
GO
CREATE TABLE [dbo].[tbl_actividades] (
[id_actividad_pk] int NOT NULL IDENTITY(1,1) ,
[nombre_actividad] varchar(100) NOT NULL ,
[descripcion] varchar(200) NOT NULL 
)


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
DROP TABLE [dbo].[tbl_arma]
GO
CREATE TABLE [dbo].[tbl_arma] (
[id_arma ] varchar(50) NOT NULL ,
[marca] varchar(50) NULL ,
[tipo] varchar(50) NULL ,
[serie] varchar(50) NULL ,
[modelo] varchar(50) NULL ,
[calibre] varchar(50) NULL ,
[balistica] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of tbl_arma
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_asig_pol_puesto
-- ----------------------------
DROP TABLE [dbo].[tbl_asig_pol_puesto]
GO
CREATE TABLE [dbo].[tbl_asig_pol_puesto] (
[id_asig_pol_puesto] int NOT NULL ,
[fk_asig_rango] int NULL ,
[fk_id_nivel_org_puest] int NULL ,
[fecha_asig] date NULL 
)


GO

-- ----------------------------
-- Records of tbl_asig_pol_puesto
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_asig_rango
-- ----------------------------
DROP TABLE [dbo].[tbl_asig_rango]
GO
CREATE TABLE [dbo].[tbl_asig_rango] (
[id_asig_rango] int NOT NULL IDENTITY(1,1) ,
[fk_rango] int NOT NULL ,
[fk_oni_policial] varchar(10) NOT NULL ,
[fecha_asig_rango] datetime NOT NULL ,
[estado_rango] bit NOT NULL 
)


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
DROP TABLE [dbo].[tbl_asig_uniforme]
GO
CREATE TABLE [dbo].[tbl_asig_uniforme] (
[id_asig_uniforme_pol] int NOT NULL ,
[fecha_entrega] date NULL ,
[fk_oni_poli_recibe] varchar(10) NULL ,
[fk_oni_poli_entrega] varchar(10) NULL 
)


GO

-- ----------------------------
-- Records of tbl_asig_uniforme
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_asig_vehi_delegacion
-- ----------------------------
DROP TABLE [dbo].[tbl_asig_vehi_delegacion]
GO
CREATE TABLE [dbo].[tbl_asig_vehi_delegacion] (
[id_asig_vehi_delegacion] int NOT NULL ,
[fecha_asig] datetime NULL ,
[fk_numero_equipo] int NULL ,
[fk_id_nivel_org] int NULL 
)


GO

-- ----------------------------
-- Records of tbl_asig_vehi_delegacion
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_asignacion_actividad_operativo
-- ----------------------------
DROP TABLE [dbo].[tbl_asignacion_actividad_operativo]
GO
CREATE TABLE [dbo].[tbl_asignacion_actividad_operativo] (
[id_asignacion_actividad_operativo_pk] int NOT NULL IDENTITY(1,1) ,
[id_actividad_fk] int NOT NULL ,
[fecha_realiza_actividad] datetime NOT NULL ,
[hora_inicia_actividad_programada] datetime NOT NULL ,
[hora_final_actividad_programada] datetime NOT NULL ,
[hora_real_finaliza_actividad] datetime NOT NULL ,
[observacion] varchar(200) NOT NULL 
)


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
DROP TABLE [dbo].[tbl_capacitaciones_cursos]
GO
CREATE TABLE [dbo].[tbl_capacitaciones_cursos] (
[id_capacitaciones_cursos] int NOT NULL ,
[tipo] int NOT NULL ,
[descripcion] varchar(255) NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_capacitaciones_cursos
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_carrera_oficio
-- ----------------------------
DROP TABLE [dbo].[tbl_carrera_oficio]
GO
CREATE TABLE [dbo].[tbl_carrera_oficio] (
[id_carrera_oficio] int NOT NULL ,
[tipo] int NOT NULL ,
[descripcion] varchar(255) NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_carrera_oficio
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_carrera_policial_terminada
-- ----------------------------
DROP TABLE [dbo].[tbl_carrera_policial_terminada]
GO
CREATE TABLE [dbo].[tbl_carrera_policial_terminada] (
[id_carrera_p_t] varchar(50) NOT NULL ,
[causa] varchar(50) NULL ,
[fecha_carrera_policial_terminada] date NULL ,
[fk_dui_policial] varchar(10) NULL 
)


GO

-- ----------------------------
-- Records of tbl_carrera_policial_terminada
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_datos_personales
-- ----------------------------
DROP TABLE [dbo].[tbl_datos_personales]
GO
CREATE TABLE [dbo].[tbl_datos_personales] (
[dui_pk] varchar(10) NOT NULL ,
[nit] varchar(20) NULL ,
[iss] varchar(25) NULL ,
[nombre] varchar(50) NULL ,
[apellido] varchar(50) NULL ,
[tipo_sangre] varchar(30) NULL ,
[estado_civil] varchar(20) NULL ,
[fecha_nacimiento] date NULL ,
[lugar_nacimiento] varchar(100) NULL ,
[sexo] varchar(10) NULL ,
[estatura] varchar(10) NULL ,
[peso] varchar(10) NULL ,
[foto_personal] image NULL 
)


GO

-- ----------------------------
-- Records of tbl_datos_personales
-- ----------------------------
INSERT INTO [dbo].[tbl_datos_personales] ([dui_pk], [nit], [iss], [nombre], [apellido], [tipo_sangre], [estado_civil], [fecha_nacimiento], [lugar_nacimiento], [sexo], [estatura], [peso], [foto_personal]) VALUES (N'01668595-4', N'000-000000-000-0', N'00000', N'Marvin Aldair', N'Alfaro Ruedas', N'O-', N'Casado', N'2000-10-28', N'Colonia Lomas De apastepeque', N'M', N'1.81', N'85K', null)
GO
GO

-- ----------------------------
-- Table structure for tbl_descrip_unifo
-- ----------------------------
DROP TABLE [dbo].[tbl_descrip_unifo]
GO
CREATE TABLE [dbo].[tbl_descrip_unifo] (
[id_descrip_uniforme] int NOT NULL ,
[nombre] varchar(50) NOT NULL ,
[tipo] int NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_descrip_unifo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_detalle_accesorios
-- ----------------------------
DROP TABLE [dbo].[tbl_detalle_accesorios]
GO
CREATE TABLE [dbo].[tbl_detalle_accesorios] (
[id_detalle_accesorios] int NOT NULL ,
[cantidad] int NULL ,
[num_serie] varchar(8) NULL ,
[fk_descrip_unifo_pol] int NULL ,
[fk_asig_uniforme_pol] int NULL 
)


GO

-- ----------------------------
-- Records of tbl_detalle_accesorios
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_detalle_estado
-- ----------------------------
DROP TABLE [dbo].[tbl_detalle_estado]
GO
CREATE TABLE [dbo].[tbl_detalle_estado] (
[iddetalleestado] int NOT NULL ,
[fecha_detalle] datetime NOT NULL ,
[fk_numeroEquipo] int NOT NULL ,
[fk_EstadoVehiculo] int NOT NULL ,
[situacion_vehiculo] bit NOT NULL ,
[estado_vehiculo] bit NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_detalle_estado
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_detalle_placa_onis
-- ----------------------------
DROP TABLE [dbo].[tbl_detalle_placa_onis]
GO
CREATE TABLE [dbo].[tbl_detalle_placa_onis] (
[id_detalle_placa] int NOT NULL ,
[cantidad] int NULL ,
[tipo_placa] int NULL ,
[observacion] text NULL ,
[fk_id_descrip_unifo] int NULL ,
[fk_id_asig_unifo_pol] int NULL 
)


GO

-- ----------------------------
-- Records of tbl_detalle_placa_onis
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_detalle_unifo_pol
-- ----------------------------
DROP TABLE [dbo].[tbl_detalle_unifo_pol]
GO
CREATE TABLE [dbo].[tbl_detalle_unifo_pol] (
[id_detalle_uniforme] int NOT NULL ,
[talla] varchar(10) NULL ,
[codigo] varchar(10) NULL ,
[fk_id_asig_uniforme_pol] int NULL ,
[fk_id_descrip_unifor] int NULL 
)


GO

-- ----------------------------
-- Records of tbl_detalle_unifo_pol
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_detallediscapacidad
-- ----------------------------
DROP TABLE [dbo].[tbl_detallediscapacidad]
GO
CREATE TABLE [dbo].[tbl_detallediscapacidad] (
[iddetallediscapacidad] varchar(255) NOT NULL ,
[duiagente] varchar(10) NOT NULL ,
[iddiscapacidad] varchar(255) NOT NULL ,
[Observacion] varchar(255) NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_detallediscapacidad
-- ----------------------------
INSERT INTO [dbo].[tbl_detallediscapacidad] ([iddetallediscapacidad], [duiagente], [iddiscapacidad], [Observacion]) VALUES (N'1', N'01668595-4', N'1', N'Nulas')
GO
GO
INSERT INTO [dbo].[tbl_detallediscapacidad] ([iddetallediscapacidad], [duiagente], [iddiscapacidad], [Observacion]) VALUES (N'2', N'01668595-4', N'2', N'Nulas')
GO
GO
INSERT INTO [dbo].[tbl_detallediscapacidad] ([iddetallediscapacidad], [duiagente], [iddiscapacidad], [Observacion]) VALUES (N'3', N'01668595-4', N'3', N'Nulas')
GO
GO

-- ----------------------------
-- Table structure for tbl_discapacidad
-- ----------------------------
DROP TABLE [dbo].[tbl_discapacidad]
GO
CREATE TABLE [dbo].[tbl_discapacidad] (
[iddiscapacidad] varchar(255) NOT NULL ,
[tipo_discapacidad] varchar(255) NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_discapacidad
-- ----------------------------
INSERT INTO [dbo].[tbl_discapacidad] ([iddiscapacidad], [tipo_discapacidad]) VALUES (N'1', N'Fisica')
GO
GO
INSERT INTO [dbo].[tbl_discapacidad] ([iddiscapacidad], [tipo_discapacidad]) VALUES (N'2', N'Visual')
GO
GO
INSERT INTO [dbo].[tbl_discapacidad] ([iddiscapacidad], [tipo_discapacidad]) VALUES (N'3', N'Psicosocial')
GO
GO
INSERT INTO [dbo].[tbl_discapacidad] ([iddiscapacidad], [tipo_discapacidad]) VALUES (N'4', N'Intelectual')
GO
GO
INSERT INTO [dbo].[tbl_discapacidad] ([iddiscapacidad], [tipo_discapacidad]) VALUES (N'5', N'Auditiva')
GO
GO

-- ----------------------------
-- Table structure for tbl_enfermedades
-- ----------------------------
DROP TABLE [dbo].[tbl_enfermedades]
GO
CREATE TABLE [dbo].[tbl_enfermedades] (
[id_enfermedad] int NOT NULL ,
[nombre_enfermedad] varchar(100) NULL ,
[tipo] int NULL 
)


GO

-- ----------------------------
-- Records of tbl_enfermedades
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_especialidades
-- ----------------------------
DROP TABLE [dbo].[tbl_especialidades]
GO
CREATE TABLE [dbo].[tbl_especialidades] (
[id_especialidad] int NOT NULL ,
[especialidad] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of tbl_especialidades
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_faltas
-- ----------------------------
DROP TABLE [dbo].[tbl_faltas]
GO
CREATE TABLE [dbo].[tbl_faltas] (
[id_faltas] int NOT NULL ,
[falta] varchar(100) NOT NULL ,
[tipo_falta_cometida] int NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_faltas
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_familiares
-- ----------------------------
DROP TABLE [dbo].[tbl_familiares]
GO
CREATE TABLE [dbo].[tbl_familiares] (
[id_familiar] varchar(15) NOT NULL ,
[dui_familiar] varchar(10) NULL ,
[parentesco] varchar(30) NULL ,
[nombre] varchar(50) NULL ,
[apellido] varchar(50) NULL ,
[telefono] varchar(9) NULL ,
[fk_dui_policial] varchar(10) NULL 
)


GO

-- ----------------------------
-- Records of tbl_familiares
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_habilidad_tecnologica
-- ----------------------------
DROP TABLE [dbo].[tbl_habilidad_tecnologica]
GO
CREATE TABLE [dbo].[tbl_habilidad_tecnologica] (
[id_habilidad_tecnologica] int NOT NULL ,
[descripcion] varchar(255) NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_habilidad_tecnologica
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_libro_entradas_salidas
-- ----------------------------
DROP TABLE [dbo].[tbl_libro_entradas_salidas]
GO
CREATE TABLE [dbo].[tbl_libro_entradas_salidas] (
[id_libro_entradas_salidas] int NOT NULL IDENTITY(1,1) ,
[tipo] int NULL ,
[fecha_marcaje] datetime NULL ,
[hora_entrada_real] datetime NULL ,
[hora_salida_real] datetime NULL ,
[hora_regreso] datetime NULL ,
[observacion_novedad] varchar(255) NULL 
)


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
DROP TABLE [dbo].[tbl_licencia_arma]
GO
CREATE TABLE [dbo].[tbl_licencia_arma] (
[ id_licencia_arma] int NOT NULL ,
[numero_licencia] varchar(20) NULL ,
[tipo_licencia] varchar(20) NULL ,
[fecha_renovacion] date NULL ,
[permiso] tinyint NULL ,
[fk_dui_policial_licencia_arma] varchar(10) NULL 
)


GO

-- ----------------------------
-- Records of tbl_licencia_arma
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_licencia_conducir
-- ----------------------------
DROP TABLE [dbo].[tbl_licencia_conducir]
GO
CREATE TABLE [dbo].[tbl_licencia_conducir] (
[id_licencia_conducir] varchar(50) NOT NULL ,
[numero_licencia] varchar(20) NULL ,
[tipo_licencia] varchar(20) NULL ,
[fecha_renovacion] date NULL ,
[permiso] varchar(50) NULL ,
[fk_dui_policial] varchar(10) NULL 
)


GO

-- ----------------------------
-- Records of tbl_licencia_conducir
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_modulo
-- ----------------------------
DROP TABLE [dbo].[tbl_modulo]
GO
CREATE TABLE [dbo].[tbl_modulo] (
[idmodulo] int NOT NULL ,
[titulo] varchar(50) NULL ,
[descripcion] text NULL ,
[estado] int NULL 
)


GO

-- ----------------------------
-- Records of tbl_modulo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_motivo_permiso
-- ----------------------------
DROP TABLE [dbo].[tbl_motivo_permiso]
GO
CREATE TABLE [dbo].[tbl_motivo_permiso] (
[id_motivo_permiso] int NOT NULL IDENTITY(1,1) ,
[motivos_permiso_con_goce_de_sueldo] varchar(150) NULL 
)


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
DROP TABLE [dbo].[tbl_movi_enfermedad]
GO
CREATE TABLE [dbo].[tbl_movi_enfermedad] (
[id_movi_mi_enfermedad] int NOT NULL ,
[fecha_deteccion] date NULL ,
[enfermedad_vigente] tinyint NULL ,
[url_img_enfermedad] bit NULL ,
[fk_id_enfermedad] int NULL ,
[fk_dui_policial] varchar(10) NULL 
)


GO

-- ----------------------------
-- Records of tbl_movi_enfermedad
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_movi_especialidad
-- ----------------------------
DROP TABLE [dbo].[tbl_movi_especialidad]
GO
CREATE TABLE [dbo].[tbl_movi_especialidad] (
[id_movi_mi_especialidad] int NOT NULL ,
[fk_dui_policia] varchar(10) NULL ,
[fk_id_especialidad] int NULL 
)


GO

-- ----------------------------
-- Records of tbl_movi_especialidad
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_movi_ingreso
-- ----------------------------
DROP TABLE [dbo].[tbl_movi_ingreso]
GO
CREATE TABLE [dbo].[tbl_movi_ingreso] (
[id_movi_mi_ingreso] int NOT NULL ,
[fecha_ingreso] date NULL ,
[fk_dui_policial] varchar(10) NULL 
)


GO

-- ----------------------------
-- Records of tbl_movi_ingreso
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_movi_salario
-- ----------------------------
DROP TABLE [dbo].[tbl_movi_salario]
GO
CREATE TABLE [dbo].[tbl_movi_salario] (
[id_movi_mi_salario] int NOT NULL ,
[salario] float(53) NULL ,
[fecha_salario] date NULL ,
[fk_dui_policial] varchar(10) NULL 
)


GO

-- ----------------------------
-- Records of tbl_movi_salario
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_movimi_arma_asig
-- ----------------------------
DROP TABLE [dbo].[tbl_movimi_arma_asig]
GO
CREATE TABLE [dbo].[tbl_movimi_arma_asig] (
[id_arma_asignada] varchar(50) NOT NULL ,
[fecha_asigna] date NULL ,
[fk_dui_policial] varchar(10) NULL ,
[fk_id_arma] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of tbl_movimi_arma_asig
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_movimi_asignacion_actividad_operativo
-- ----------------------------
DROP TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo]
GO
CREATE TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo] (
[id_movimi_asignacion_actividad_operativo_pk] int NOT NULL IDENTITY(1,1) ,
[id_asignacion_actividad_operativo_fk] int NOT NULL ,
[dui_fk] varchar(10) NOT NULL 
)


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
DROP TABLE [dbo].[tbl_movimi_cap_cursos]
GO
CREATE TABLE [dbo].[tbl_movimi_cap_cursos] (
[id_movimi_cap_cursos] int NOT NULL ,
[fecha_inicio] datetime NOT NULL ,
[fecha_finalizacion] datetime NOT NULL ,
[fk_dui_policial] varchar(10) NOT NULL ,
[fk_id_capacitaciones_cursos] int NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_movimi_cap_cursos
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_movimi_habilidad_tec
-- ----------------------------
DROP TABLE [dbo].[tbl_movimi_habilidad_tec]
GO
CREATE TABLE [dbo].[tbl_movimi_habilidad_tec] (
[id_movimi_hab_tec] int NOT NULL ,
[fecha_registro] datetime NOT NULL ,
[fk_dui_policial] varchar(10) NOT NULL ,
[fk_id_hab_tec] int NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_movimi_habilidad_tec
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_movimi_libro_entradas_salidas
-- ----------------------------
DROP TABLE [dbo].[tbl_movimi_libro_entradas_salidas]
GO
CREATE TABLE [dbo].[tbl_movimi_libro_entradas_salidas] (
[id_movimi_libro_entradas_salidas ] int NOT NULL IDENTITY(1,1) ,
[fk_id_libro_entradas_salidas] int NULL ,
[fk_dui] varchar(10) NULL 
)


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
DROP TABLE [dbo].[tbl_movimi_promo]
GO
CREATE TABLE [dbo].[tbl_movimi_promo] (
[id_movimi_promocion] int NOT NULL ,
[fk_dui_policial] varchar(10) NULL ,
[fk_id_promocion] int NULL ,
[fecha_registro] date NULL 
)


GO

-- ----------------------------
-- Records of tbl_movimi_promo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_movimi_sansiones
-- ----------------------------
DROP TABLE [dbo].[tbl_movimi_sansiones]
GO
CREATE TABLE [dbo].[tbl_movimi_sansiones] (
[id_movimi_sansion] int NOT NULL ,
[desde] datetime NOT NULL ,
[hasta] datetime NOT NULL ,
[fk_id_sansion] int NOT NULL ,
[fk_dui_policial] varchar(10) NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_movimi_sansiones
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_nilv_org
-- ----------------------------
DROP TABLE [dbo].[tbl_nilv_org]
GO
CREATE TABLE [dbo].[tbl_nilv_org] (
[idNivelOrg] int NOT NULL ,
[nombre] varchar(255) NULL ,
[n1] int NULL ,
[n2] int NULL ,
[n3] int NULL ,
[n4] int NOT NULL ,
[tipoNivel] int NULL 
)


GO

-- ----------------------------
-- Records of tbl_nilv_org
-- ----------------------------
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'1', N'JEFATURA DELEGACION', N'1', N'0', N'0', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'2', N'UNIDAD DE INVESTIGACION
DISCIPLINARIA', N'1', N'1', N'0', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'3', N'SUBJEFATURA', N'2', N'0', N'0', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'4', N'SECCION DE INFORMACION Y
ESTADISTICAS POLICIALES', N'2', N'1', N'0', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'5', N'DEPARTAMENTO DE SEGURIDAD
PUBLICA URBANA', N'2', N'2', N'0', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'6', N'SECCION TRANSITO TERRESTRE', N'2', N'2', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'7', N'SECCION DE EMERGENCIAS 911', N'2', N'2', N'2', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'8', N'SECCION DE SEGURIDAD PUBLICA
URBANA', N'2', N'2', N'3', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'9', N'UNIMUJER ODAC', N'2', N'2', N'3', N'1', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'10', N'ODAC FAMILIA', N'2', N'2', N'3', N'2', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'11', N'SECCION DE SERVICIOS
EXTRAORDINARIOS', N'2', N'2', N'4', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'12', N'UNIDAD DE BARTOLINAS', N'2', N'2', N'4', N'1', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'13', N'UNIDAD DE CUSTODIA DE
VEHICULOS', N'2', N'2', N'4', N'2', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'14', N'DEPARTAMENTO DE AREAS
ESPECIALIZADAS OPERATIVAS', N'2', N'3', N'0', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'15', N'SECCION TACTICA OPERATIVA', N'2', N'3', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'16', N'SECCION DE ARMAS Y
EXPLOSIVOS', N'2', N'3', N'2', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'17', N'SECCION DE CUMPLIMIENTO A
DISPOSICIONES JUDICIALES', N'2', N'3', N'3', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'18', N'SECCION PROTECCION A
VICTIMAS Y TESTIGOS', N'2', N'3', N'4', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'19', N'DEPARTAMENTO DE
ADMINISTRACION', N'2', N'4', N'0', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'20', N'SECCION DE LOGISTICA E
INFRAESTRUCTURA', N'2', N'4', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'21', N'SECCION DE BIENESTAR
POLICIAL Y TALENTO HUMANO', N'2', N'4', N'2', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'22', N'SECCION DE SALIUD POLICIAL', N'2', N'4', N'3', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'23', N'SECCION DE FINANCIERA', N'2', N'4', N'4', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'24', N'SECCION DE TECNOLOGIA DE
INFORMACION Y COMUNICACIONES', N'2', N'4', N'5', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'25', N'DEPARTAMENTO DE
INVESTIGACIONES', N'2', N'5', N'0', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'26', N'SECCION DE DELITOS CONTRA LA
VIDA', N'2', N'5', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'27', N'SECCION DE DELITOS CONTRA LA
MUJER', N'2', N'5', N'1', N'1', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'28', N'SECCION DE DELITOS CONTRA EL
PATRIMONIO', N'2', N'5', N'2', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'29', N'SECCION DE DELITOS
GENERALES', N'2', N'5', N'3', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'30', N'SECCION DE ANTINARCOTICOS', N'2', N'5', N'4', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'31', N'SECCION DE POLICIA TECNICA Y
CIENTIFICA', N'2', N'5', N'5', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'32', N'SECCION DE TECNICA FORENSE', N'2', N'5', N'6', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'33', N'DEPARTAMENTO DE
INTELIGENCIA', N'2', N'6', N'0', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'34', N'SECCION DE RECOPILACION DE
INFORMACION', N'2', N'6', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'35', N'SECCION DE ANALISIS Y
PRODUCCION DE INTELIGENCIA', N'2', N'6', N'2', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'36', N'DEPARTAMENTO DE SEGURIDAD
PUBLICA RURAL', N'2', N'7', N'0', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'37', N'SECCION DE SEGURIDAD PUBLICA
RURAL', N'2', N'7', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'38', N'SECCION DE COMANDO
CONJUNTO', N'2', N'7', N'2', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'39', N'SECCION DE MEDIO AMBIENTE', N'2', N'7', N'3', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'40', N'SUBDELEGACION DE SAN
VICENTE', N'2', N'8', N'0', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'41', N'SUBDELEGACION DE VERAPAZ', N'2', N'9', N'0', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'42', N'PUESTO GUADALUPE', N'2', N'9', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'43', N'PUESTO DE TEPETITAN', N'2', N'9', N'2', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'44', N'PUESTO DE SAN CAYETANO
ISTEPEQUE', N'2', N'9', N'3', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'45', N'SUBDELEGACION DE
APASTEPEQUE', N'2', N'10', N'0', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'46', N'PUESTO SAN ILDEFONSO', N'2', N'10', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'47', N'PUESTO DE SAN ESTEBAN
CATARINA', N'2', N'10', N'2', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'48', N'PUESTO DE SAN JACINTO', N'2', N'10', N'3', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'49', N'PUESTO DE SANTA CLARA', N'2', N'10', N'4', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'50', N'PUESTO PUENTE CUSCATLAN', N'2', N'10', N'5', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'51', N'SUBDELEGACION DE TECOLUCA', N'2', N'11', N'0', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'52', N'PUESTO DE SAN NICOLAS
LEMPA', N'2', N'11', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'53', N'PUESTO DE SAN CARLOS LEMPA', N'2', N'11', N'2', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'54', N'PUESTO DE SANTA CRUZ
PORRILLO', N'2', N'11', N'3', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'55', N'SUBDELEGACION SAN
SEBASTIAN', N'2', N'12', N'0', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'56', N'PUESTO DE SANTO DOMINGO', N'2', N'12', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'57', N'PUESTO DE SAN LORENZO', N'2', N'12', N'2', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'58', N'SD-SVIC SECCION DE
INVESTIGACION DISCIPLINARIA', N'2', N'8', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'59', N'SD-VER SECCION DE
INVESTIGACION DISCIPLINARIA', N'2', N'9', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'60', N'SD-APAS SECCION DE
INVESTIGACION DISCIPLINARIA', N'2', N'10', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'61', N'SD-TEC SECCION DE
INVESTIGACION DISCIPLINARIA', N'2', N'11', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[tbl_nilv_org] ([idNivelOrg], [nombre], [n1], [n2], [n3], [n4], [tipoNivel]) VALUES (N'62', N'SD-SSEB SECCION DE
INVESTIGACION DISCIPLINARIA', N'2', N'12', N'1', N'0', null)
GO
GO

-- ----------------------------
-- Table structure for tbl_nivel
-- ----------------------------
DROP TABLE [dbo].[tbl_nivel]
GO
CREATE TABLE [dbo].[tbl_nivel] (
[id_nivel] int NOT NULL ,
[nivel] varchar(10) NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_nivel
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_nivel_academico
-- ----------------------------
DROP TABLE [dbo].[tbl_nivel_academico]
GO
CREATE TABLE [dbo].[tbl_nivel_academico] (
[id_nivel_academico] int NOT NULL ,
[nivel_academico] int NOT NULL ,
[fk_dui_policial] varchar(10) NOT NULL ,
[fk_id_carrera_oficio] int NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_nivel_academico
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_nivel_puest
-- ----------------------------
DROP TABLE [dbo].[tbl_nivel_puest]
GO
CREATE TABLE [dbo].[tbl_nivel_puest] (
[idNivelOrgPuesto] int NOT NULL ,
[idNivelOrg] int NULL ,
[idPuesto] int NULL 
)


GO

-- ----------------------------
-- Records of tbl_nivel_puest
-- ----------------------------
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'2', N'1', N'2')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'3', N'1', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'4', N'1', N'4')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'5', N'1', N'5')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'6', N'1', N'6')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'7', N'1', N'7')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'8', N'2', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'9', N'2', N'8')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'10', N'2', N'9')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'11', N'2', N'2')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'12', N'3', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'13', N'3', N'2')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'14', N'3', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'15', N'3', N'5')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'16', N'3', N'4')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'17', N'4', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'18', N'4', N'10')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'19', N'4', N'11')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'20', N'4', N'12')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'21', N'5', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'22', N'5', N'5')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'23', N'5', N'2')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'24', N'5', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'25', N'6', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'26', N'6', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'27', N'6', N'13')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'28', N'6', N'14')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'29', N'6', N'15')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'30', N'6', N'5')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'31', N'6', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'32', N'6', N'17')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'33', N'6', N'18')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'34', N'7', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'35', N'7', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'36', N'7', N'15')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'37', N'7', N'5')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'38', N'7', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'39', N'7', N'17')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'40', N'7', N'18')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'41', N'8', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'42', N'8', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'43', N'8', N'15')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'44', N'8', N'5')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'45', N'8', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'46', N'8', N'17')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'47', N'8', N'18')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'48', N'8', N'19')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'49', N'9', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'50', N'9', N'17')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'51', N'9', N'20')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'52', N'10', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'53', N'10', N'17')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'54', N'10', N'20')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'55', N'11', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'56', N'11', N'17')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'57', N'11', N'21')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'58', N'12', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'59', N'12', N'17')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'60', N'12', N'22')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'61', N'12', N'23')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'62', N'13', N'17')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'63', N'13', N'22')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'64', N'14', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'65', N'14', N'5')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'66', N'14', N'2')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'67', N'14', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'68', N'15', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'69', N'15', N'17')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'70', N'15', N'24')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'71', N'16', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'72', N'16', N'25')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'73', N'16', N'17')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'74', N'17', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'75', N'17', N'17')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'76', N'17', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'77', N'18', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'78', N'18', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'79', N'18', N'17')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'80', N'19', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'81', N'19', N'5')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'82', N'19', N'2')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'83', N'19', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'84', N'20', N'18')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'85', N'20', N'15')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'86', N'20', N'26')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'87', N'20', N'27')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'88', N'21', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'89', N'21', N'27')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'90', N'21', N'28')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'91', N'22', N'29')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'92', N'22', N'30')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'93', N'22', N'31')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'94', N'22', N'32')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'95', N'22', N'33')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'96', N'22', N'2')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'97', N'22', N'27')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'98', N'23', N'34')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'99', N'23', N'35')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'100', N'23', N'27')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'101', N'24', N'27')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'102', N'25', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'103', N'25', N'27')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'104', N'25', N'2')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'105', N'25', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'106', N'26', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'107', N'26', N'36')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'108', N'26', N'37')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'109', N'27', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'200', N'27', N'36')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'201', N'27', N'37')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'202', N'28', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'203', N'28', N'36')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'204', N'28', N'37')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'205', N'29', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'206', N'29', N'36')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'207', N'29', N'37')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'208', N'30', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'209', N'30', N'36')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'210', N'30', N'37')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'211', N'31', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'212', N'31', N'36')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'213', N'31', N'37')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'214', N'32', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'215', N'32', N'27')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'216', N'32', N'36')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'217', N'32', N'37')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'218', N'33', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'219', N'33', N'27')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'220', N'33', N'2')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'221', N'33', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'222', N'34', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'223', N'34', N'38')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'224', N'35', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'225', N'35', N'38')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'226', N'35', N'39')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'227', N'36', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'228', N'36', N'27')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'229', N'36', N'2')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'230', N'36', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'231', N'37', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'232', N'37', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'233', N'37', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'234', N'38', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'235', N'38', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'236', N'38', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'237', N'39', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'238', N'39', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'239', N'39', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'240', N'40', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'241', N'40', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'242', N'40', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'243', N'40', N'2')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'244', N'40', N'4')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'245', N'40', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'246', N'40', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'247', N'41', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'248', N'41', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'249', N'41', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'250', N'41', N'2')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'251', N'41', N'4')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'252', N'41', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'253', N'41', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'254', N'45', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'255', N'45', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'256', N'45', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'257', N'45', N'2')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'258', N'45', N'4')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'259', N'45', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'260', N'45', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'261', N'51', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'262', N'51', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'263', N'51', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'264', N'51', N'2')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'265', N'51', N'4')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'266', N'51', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'267', N'51', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'268', N'55', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'269', N'55', N'3')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'270', N'55', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'271', N'55', N'2')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'272', N'55', N'4')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'273', N'55', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'274', N'55', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'275', N'58', N'8')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'276', N'58', N'9')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'277', N'59', N'8')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'278', N'59', N'9')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'279', N'60', N'8')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'280', N'60', N'9')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'281', N'61', N'8')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'282', N'61', N'9')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'283', N'62', N'8')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'284', N'62', N'9')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'285', N'42', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'286', N'42', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'287', N'42', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'288', N'42', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'289', N'43', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'290', N'43', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'291', N'43', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'292', N'43', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'293', N'44', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'294', N'44', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'295', N'44', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'296', N'44', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'297', N'46', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'298', N'46', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'299', N'46', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'300', N'46', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'301', N'47', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'302', N'47', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'303', N'47', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'304', N'47', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'305', N'48', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'306', N'48', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'307', N'48', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'308', N'48', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'309', N'49', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'310', N'49', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'311', N'49', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'312', N'49', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'313', N'50', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'314', N'50', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'315', N'50', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'316', N'50', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'317', N'52', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'318', N'52', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'319', N'52', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'320', N'52', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'321', N'53', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'322', N'53', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'323', N'53', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'324', N'53', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'325', N'54', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'326', N'54', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'327', N'54', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'328', N'54', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'329', N'56', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'330', N'56', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'331', N'56', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'332', N'56', N'41')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'333', N'57', N'1')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'334', N'57', N'16')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'335', N'57', N'40')
GO
GO
INSERT INTO [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto], [idNivelOrg], [idPuesto]) VALUES (N'336', N'57', N'41')
GO
GO

-- ----------------------------
-- Table structure for tbl_oni_policial
-- ----------------------------
DROP TABLE [dbo].[tbl_oni_policial]
GO
CREATE TABLE [dbo].[tbl_oni_policial] (
[num_oni] varchar(10) NOT NULL ,
[fecha_asignacion] date NULL ,
[estado] bit NULL ,
[fk_dui_policial] varchar(10) NULL 
)


GO

-- ----------------------------
-- Records of tbl_oni_policial
-- ----------------------------
INSERT INTO [dbo].[tbl_oni_policial] ([num_oni], [fecha_asignacion], [estado], [fk_dui_policial]) VALUES (N'1111', N'2021-10-28', N'1', N'01668595-4')
GO
GO

-- ----------------------------
-- Table structure for tbl_permiso_con_sin_goce_sueldo
-- ----------------------------
DROP TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo]
GO
CREATE TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] (
[id_permiso_con_goce_sueldo] int NOT NULL IDENTITY(1,1) ,
[fk_dui_solicitante] varchar(10) NULL ,
[fk_dui_jefe_inmediato] varchar(10) NULL ,
[fk_dui_jefe_inmediato_superior] varchar(10) NULL ,
[fecha_inicio] datetime NULL ,
[fecha_final] datetime NULL ,
[aprobado] tinyint NULL ,
[id_motivo_permiso] int NULL ,
[imagen] varchar(100) NULL ,
[observacion] varchar(150) NULL ,
[motivo] varchar(150) NULL ,
[fk_tipo_permiso] varchar(50) NULL 
)


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
DROP TABLE [dbo].[tbl_permisos]
GO
CREATE TABLE [dbo].[tbl_permisos] (
[idpermiso] int NOT NULL ,
[rolid] int NULL ,
[moduloid] int NULL ,
[leer] int NULL ,
[escribir] int NULL ,
[actualizar] int NULL ,
[eliminar] int NULL 
)


GO

-- ----------------------------
-- Records of tbl_permisos
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_promocion
-- ----------------------------
DROP TABLE [dbo].[tbl_promocion]
GO
CREATE TABLE [dbo].[tbl_promocion] (
[id_promocion] int NOT NULL ,
[anio_promocion] date NULL ,
[numero_promocion] varchar(15) NULL 
)


GO

-- ----------------------------
-- Records of tbl_promocion
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_puesto
-- ----------------------------
DROP TABLE [dbo].[tbl_puesto]
GO
CREATE TABLE [dbo].[tbl_puesto] (
[idPuesto] int NOT NULL ,
[nombre] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of tbl_puesto
-- ----------------------------
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'1', N'JEFATURA')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'2', N'MOTORISTA')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'3', N'SECRETARIA')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'4', N'COLABORADOR ADMINISTRATIVO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'5', N'APOYO TECNICO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'6', N'EQUIPO DE COMUNICACIONES')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'7', N'ARCHIVO CENTRAL PEREFERICO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'8', N'INSTRUCTORES DISCIPLINARIOS')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'9', N'SECRETARIO DE ACTUACIONES')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'10', N'ANALISTA ESTRETAGICO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'11', N'RECOLECTOR DE INFORMACION')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'12', N'OPERADOR DE RADIO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'13', N'INSPECCIONES DE TRANSITO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'14', N'DILIGENCIADORES DE TRANSITO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'15', N'APOYO ADMINISTRATIVO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'16', N'ATENCION AL PUBLICO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'17', N'POLICIA OPERATIVO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'18', N'POLICIA CON FUNCION ADMINISTRATIVA')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'19', N'POLICIA PROGRAMAS PREVENTIVOS')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'20', N'POLICIA DE ATENCION DE CASOS')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'21', N'POLICIA DE ATENCION')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'22', N'POLICIA CUSTODIO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'23', N'CHEQUEO CLINICO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'24', N'POLICIA TACTICO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'25', N'POLICIA TECNICO OPERATIVO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'26', N'OBRERO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'27', N'APOYO TECNICO ADMINISTRATIVO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'28', N'COORDINADOR DE FORMACION PROFESIONAL')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'29', N'MEDICO GENERAL')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'30', N'ODONTOLOGO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'31', N'PSICOLOGO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'32', N'TRABAJADOR SOCIAL')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'33', N'ENFERMERA')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'34', N'FONDO CIRCULANTE DE MONTO FIJO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'35', N'PAGADURIA AUXILIAR')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'36', N'INVESTIGADORES')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'37', N'DILIGENCIADORES')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'38', N'APOYO TECNICO OPERATIVO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'39', N'ANALISTA')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'40', N'PERSONAL OPERATIVO')
GO
GO
INSERT INTO [dbo].[tbl_puesto] ([idPuesto], [nombre]) VALUES (N'41', N'PERSONAL OPERATIVO CON FUNCION ADMINISTRATIVA')
GO
GO

-- ----------------------------
-- Table structure for tbl_rango
-- ----------------------------
DROP TABLE [dbo].[tbl_rango]
GO
CREATE TABLE [dbo].[tbl_rango] (
[id_rango] int NOT NULL ,
[rango_policia] varchar(20) NOT NULL ,
[fk_nivel] int NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_rango
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_rol
-- ----------------------------
DROP TABLE [dbo].[tbl_rol]
GO
CREATE TABLE [dbo].[tbl_rol] (
[idrol] int NOT NULL ,
[nombrerol] varchar(50) NULL ,
[descripcion] text NULL ,
[estado] int NULL 
)


GO

-- ----------------------------
-- Records of tbl_rol
-- ----------------------------
INSERT INTO [dbo].[tbl_rol] ([idrol], [nombrerol], [descripcion], [estado]) VALUES (N'202110271', N'Administrador', N'Superadministrador', N'1')
GO
GO
INSERT INTO [dbo].[tbl_rol] ([idrol], [nombrerol], [descripcion], [estado]) VALUES (N'202110272', N'Delegacion', N'Rol de delegacion', N'1')
GO
GO
INSERT INTO [dbo].[tbl_rol] ([idrol], [nombrerol], [descripcion], [estado]) VALUES (N'202110273', N'Nuevo Rol', N'Nuevo rol', N'2')
GO
GO
INSERT INTO [dbo].[tbl_rol] ([idrol], [nombrerol], [descripcion], [estado]) VALUES (N'202110274', N'sfg', N'dfgh', N'0')
GO
GO

-- ----------------------------
-- Table structure for tbl_sansiones
-- ----------------------------
DROP TABLE [dbo].[tbl_sansiones]
GO
CREATE TABLE [dbo].[tbl_sansiones] (
[id_sansiones] int NOT NULL ,
[sansion] varchar(255) NOT NULL ,
[fk_id_faltas] int NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_sansiones
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_telefono
-- ----------------------------
DROP TABLE [dbo].[tbl_telefono]
GO
CREATE TABLE [dbo].[tbl_telefono] (
[id_tel] varchar(50) NOT NULL ,
[numero_telefono] varchar(15) NULL ,
[tipo] varchar(20) NULL ,
[fk_dui_policial] varchar(10) NULL 
)


GO

-- ----------------------------
-- Records of tbl_telefono
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_tipo_vehiculo
-- ----------------------------
DROP TABLE [dbo].[tbl_tipo_vehiculo]
GO
CREATE TABLE [dbo].[tbl_tipo_vehiculo] (
[idTipoVehiculo] int NOT NULL ,
[tipoVehiculo] varchar(50) NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_tipo_vehiculo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_usuario
-- ----------------------------
DROP TABLE [dbo].[tbl_usuario]
GO
CREATE TABLE [dbo].[tbl_usuario] (
[idusuario] int NOT NULL ,
[email_usuario] varchar(100) NULL ,
[contrasena] varchar(75) NULL ,
[fk_dui] varchar(10) NULL ,
[token] varchar(100) NULL ,
[rolid] int NULL ,
[datecreated] datetime NULL ,
[estado] int NULL 
)


GO

-- ----------------------------
-- Records of tbl_usuario
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_vehiculo
-- ----------------------------
DROP TABLE [dbo].[tbl_vehiculo]
GO
CREATE TABLE [dbo].[tbl_vehiculo] (
[numero_equipo] int NOT NULL ,
[placa] varchar(12) NOT NULL ,
[legalidad_vehiculo] varchar(50) NOT NULL ,
[funcion] varchar(35) NOT NULL ,
[anioVehiculo] varchar(4) NOT NULL ,
[fk_tipoVehiculo] int NOT NULL 
)


GO

-- ----------------------------
-- Records of tbl_vehiculo
-- ----------------------------

-- ----------------------------
-- Table structure for tblo_estado_vehiculo
-- ----------------------------
DROP TABLE [dbo].[tblo_estado_vehiculo]
GO
CREATE TABLE [dbo].[tblo_estado_vehiculo] (
[idEstadoVehiculo] int NOT NULL ,
[nombreEstado] varchar(50) NOT NULL 
)


GO

-- ----------------------------
-- Records of tblo_estado_vehiculo
-- ----------------------------

-- ----------------------------
-- Table structure for tipoNivelOrg
-- ----------------------------
DROP TABLE [dbo].[tipoNivelOrg]
GO
CREATE TABLE [dbo].[tipoNivelOrg] (
[idtipo] int NOT NULL ,
[nombretipo] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of tipoNivelOrg
-- ----------------------------

-- ----------------------------
-- Indexes structure for table tbl_actividades
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_actividades
-- ----------------------------
ALTER TABLE [dbo].[tbl_actividades] ADD PRIMARY KEY ([id_actividad_pk])
GO

-- ----------------------------
-- Indexes structure for table tbl_arma
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_arma
-- ----------------------------
ALTER TABLE [dbo].[tbl_arma] ADD PRIMARY KEY ([id_arma ])
GO

-- ----------------------------
-- Indexes structure for table tbl_asig_pol_puesto
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_asig_pol_puesto
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_pol_puesto] ADD PRIMARY KEY ([id_asig_pol_puesto])
GO

-- ----------------------------
-- Indexes structure for table tbl_asig_rango
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_asig_rango
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_rango] ADD PRIMARY KEY ([id_asig_rango])
GO

-- ----------------------------
-- Indexes structure for table tbl_asig_uniforme
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_asig_uniforme
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_uniforme] ADD PRIMARY KEY ([id_asig_uniforme_pol])
GO

-- ----------------------------
-- Indexes structure for table tbl_asig_vehi_delegacion
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_asig_vehi_delegacion
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_vehi_delegacion] ADD PRIMARY KEY ([id_asig_vehi_delegacion])
GO

-- ----------------------------
-- Indexes structure for table tbl_asignacion_actividad_operativo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_asignacion_actividad_operativo
-- ----------------------------
ALTER TABLE [dbo].[tbl_asignacion_actividad_operativo] ADD PRIMARY KEY ([id_asignacion_actividad_operativo_pk])
GO

-- ----------------------------
-- Indexes structure for table tbl_capacitaciones_cursos
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_capacitaciones_cursos
-- ----------------------------
ALTER TABLE [dbo].[tbl_capacitaciones_cursos] ADD PRIMARY KEY ([id_capacitaciones_cursos])
GO

-- ----------------------------
-- Indexes structure for table tbl_carrera_oficio
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_carrera_oficio
-- ----------------------------
ALTER TABLE [dbo].[tbl_carrera_oficio] ADD PRIMARY KEY ([id_carrera_oficio])
GO

-- ----------------------------
-- Indexes structure for table tbl_carrera_policial_terminada
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_carrera_policial_terminada
-- ----------------------------
ALTER TABLE [dbo].[tbl_carrera_policial_terminada] ADD PRIMARY KEY ([id_carrera_p_t])
GO

-- ----------------------------
-- Indexes structure for table tbl_datos_personales
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_datos_personales
-- ----------------------------
ALTER TABLE [dbo].[tbl_datos_personales] ADD PRIMARY KEY ([dui_pk])
GO

-- ----------------------------
-- Indexes structure for table tbl_descrip_unifo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_descrip_unifo
-- ----------------------------
ALTER TABLE [dbo].[tbl_descrip_unifo] ADD PRIMARY KEY ([id_descrip_uniforme])
GO

-- ----------------------------
-- Indexes structure for table tbl_detalle_accesorios
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_detalle_accesorios
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_accesorios] ADD PRIMARY KEY ([id_detalle_accesorios])
GO

-- ----------------------------
-- Indexes structure for table tbl_detalle_estado
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_detalle_estado
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_estado] ADD PRIMARY KEY ([iddetalleestado])
GO

-- ----------------------------
-- Indexes structure for table tbl_detalle_placa_onis
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_detalle_placa_onis
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_placa_onis] ADD PRIMARY KEY ([id_detalle_placa])
GO

-- ----------------------------
-- Indexes structure for table tbl_detalle_unifo_pol
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_detalle_unifo_pol
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_unifo_pol] ADD PRIMARY KEY ([id_detalle_uniforme])
GO

-- ----------------------------
-- Indexes structure for table tbl_detallediscapacidad
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_detallediscapacidad
-- ----------------------------
ALTER TABLE [dbo].[tbl_detallediscapacidad] ADD PRIMARY KEY ([iddetallediscapacidad])
GO

-- ----------------------------
-- Indexes structure for table tbl_discapacidad
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_discapacidad
-- ----------------------------
ALTER TABLE [dbo].[tbl_discapacidad] ADD PRIMARY KEY ([iddiscapacidad])
GO

-- ----------------------------
-- Indexes structure for table tbl_enfermedades
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_enfermedades
-- ----------------------------
ALTER TABLE [dbo].[tbl_enfermedades] ADD PRIMARY KEY ([id_enfermedad])
GO

-- ----------------------------
-- Indexes structure for table tbl_especialidades
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_especialidades
-- ----------------------------
ALTER TABLE [dbo].[tbl_especialidades] ADD PRIMARY KEY ([id_especialidad])
GO

-- ----------------------------
-- Indexes structure for table tbl_faltas
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_faltas
-- ----------------------------
ALTER TABLE [dbo].[tbl_faltas] ADD PRIMARY KEY ([id_faltas])
GO

-- ----------------------------
-- Indexes structure for table tbl_familiares
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_familiares
-- ----------------------------
ALTER TABLE [dbo].[tbl_familiares] ADD PRIMARY KEY ([id_familiar])
GO

-- ----------------------------
-- Indexes structure for table tbl_habilidad_tecnologica
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_habilidad_tecnologica
-- ----------------------------
ALTER TABLE [dbo].[tbl_habilidad_tecnologica] ADD PRIMARY KEY ([id_habilidad_tecnologica])
GO

-- ----------------------------
-- Indexes structure for table tbl_libro_entradas_salidas
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_libro_entradas_salidas
-- ----------------------------
ALTER TABLE [dbo].[tbl_libro_entradas_salidas] ADD PRIMARY KEY ([id_libro_entradas_salidas])
GO

-- ----------------------------
-- Indexes structure for table tbl_licencia_arma
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_licencia_arma
-- ----------------------------
ALTER TABLE [dbo].[tbl_licencia_arma] ADD PRIMARY KEY ([ id_licencia_arma])
GO

-- ----------------------------
-- Indexes structure for table tbl_licencia_conducir
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_licencia_conducir
-- ----------------------------
ALTER TABLE [dbo].[tbl_licencia_conducir] ADD PRIMARY KEY ([id_licencia_conducir])
GO

-- ----------------------------
-- Indexes structure for table tbl_modulo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_modulo
-- ----------------------------
ALTER TABLE [dbo].[tbl_modulo] ADD PRIMARY KEY ([idmodulo])
GO

-- ----------------------------
-- Indexes structure for table tbl_motivo_permiso
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_motivo_permiso
-- ----------------------------
ALTER TABLE [dbo].[tbl_motivo_permiso] ADD PRIMARY KEY ([id_motivo_permiso])
GO

-- ----------------------------
-- Indexes structure for table tbl_movi_enfermedad
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_movi_enfermedad
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_enfermedad] ADD PRIMARY KEY ([id_movi_mi_enfermedad])
GO

-- ----------------------------
-- Indexes structure for table tbl_movi_especialidad
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_movi_especialidad
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_especialidad] ADD PRIMARY KEY ([id_movi_mi_especialidad])
GO

-- ----------------------------
-- Indexes structure for table tbl_movi_ingreso
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_movi_ingreso
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_ingreso] ADD PRIMARY KEY ([id_movi_mi_ingreso])
GO

-- ----------------------------
-- Indexes structure for table tbl_movi_salario
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_movi_salario
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_salario] ADD PRIMARY KEY ([id_movi_mi_salario])
GO

-- ----------------------------
-- Indexes structure for table tbl_movimi_arma_asig
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_movimi_arma_asig
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_arma_asig] ADD PRIMARY KEY ([id_arma_asignada])
GO

-- ----------------------------
-- Indexes structure for table tbl_movimi_asignacion_actividad_operativo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_movimi_asignacion_actividad_operativo
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo] ADD PRIMARY KEY ([id_movimi_asignacion_actividad_operativo_pk])
GO

-- ----------------------------
-- Indexes structure for table tbl_movimi_cap_cursos
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_movimi_cap_cursos
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_cap_cursos] ADD PRIMARY KEY ([id_movimi_cap_cursos])
GO

-- ----------------------------
-- Indexes structure for table tbl_movimi_habilidad_tec
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_movimi_habilidad_tec
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_habilidad_tec] ADD PRIMARY KEY ([id_movimi_hab_tec])
GO

-- ----------------------------
-- Indexes structure for table tbl_movimi_libro_entradas_salidas
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_movimi_libro_entradas_salidas
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_libro_entradas_salidas] ADD PRIMARY KEY ([id_movimi_libro_entradas_salidas ])
GO

-- ----------------------------
-- Indexes structure for table tbl_movimi_promo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_movimi_promo
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_promo] ADD PRIMARY KEY ([id_movimi_promocion])
GO

-- ----------------------------
-- Indexes structure for table tbl_movimi_sansiones
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_movimi_sansiones
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_sansiones] ADD PRIMARY KEY ([id_movimi_sansion])
GO

-- ----------------------------
-- Indexes structure for table tbl_nilv_org
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_nilv_org
-- ----------------------------
ALTER TABLE [dbo].[tbl_nilv_org] ADD PRIMARY KEY ([idNivelOrg])
GO

-- ----------------------------
-- Indexes structure for table tbl_nivel
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_nivel
-- ----------------------------
ALTER TABLE [dbo].[tbl_nivel] ADD PRIMARY KEY ([id_nivel])
GO

-- ----------------------------
-- Indexes structure for table tbl_nivel_academico
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_nivel_academico
-- ----------------------------
ALTER TABLE [dbo].[tbl_nivel_academico] ADD PRIMARY KEY ([id_nivel_academico])
GO

-- ----------------------------
-- Indexes structure for table tbl_nivel_puest
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_nivel_puest
-- ----------------------------
ALTER TABLE [dbo].[tbl_nivel_puest] ADD PRIMARY KEY ([idNivelOrgPuesto])
GO

-- ----------------------------
-- Indexes structure for table tbl_oni_policial
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_oni_policial
-- ----------------------------
ALTER TABLE [dbo].[tbl_oni_policial] ADD PRIMARY KEY ([num_oni])
GO

-- ----------------------------
-- Indexes structure for table tbl_permiso_con_sin_goce_sueldo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_permiso_con_sin_goce_sueldo
-- ----------------------------
ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] ADD PRIMARY KEY ([id_permiso_con_goce_sueldo])
GO

-- ----------------------------
-- Indexes structure for table tbl_permisos
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_permisos
-- ----------------------------
ALTER TABLE [dbo].[tbl_permisos] ADD PRIMARY KEY ([idpermiso])
GO

-- ----------------------------
-- Indexes structure for table tbl_promocion
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_promocion
-- ----------------------------
ALTER TABLE [dbo].[tbl_promocion] ADD PRIMARY KEY ([id_promocion])
GO

-- ----------------------------
-- Indexes structure for table tbl_puesto
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_puesto
-- ----------------------------
ALTER TABLE [dbo].[tbl_puesto] ADD PRIMARY KEY ([idPuesto])
GO

-- ----------------------------
-- Indexes structure for table tbl_rango
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_rango
-- ----------------------------
ALTER TABLE [dbo].[tbl_rango] ADD PRIMARY KEY ([id_rango])
GO

-- ----------------------------
-- Indexes structure for table tbl_rol
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_rol
-- ----------------------------
ALTER TABLE [dbo].[tbl_rol] ADD PRIMARY KEY ([idrol])
GO

-- ----------------------------
-- Indexes structure for table tbl_sansiones
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_sansiones
-- ----------------------------
ALTER TABLE [dbo].[tbl_sansiones] ADD PRIMARY KEY ([id_sansiones])
GO

-- ----------------------------
-- Indexes structure for table tbl_telefono
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_telefono
-- ----------------------------
ALTER TABLE [dbo].[tbl_telefono] ADD PRIMARY KEY ([id_tel])
GO

-- ----------------------------
-- Indexes structure for table tbl_tipo_vehiculo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_tipo_vehiculo
-- ----------------------------
ALTER TABLE [dbo].[tbl_tipo_vehiculo] ADD PRIMARY KEY ([idTipoVehiculo])
GO

-- ----------------------------
-- Indexes structure for table tbl_usuario
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_usuario
-- ----------------------------
ALTER TABLE [dbo].[tbl_usuario] ADD PRIMARY KEY ([idusuario])
GO

-- ----------------------------
-- Indexes structure for table tbl_vehiculo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_vehiculo
-- ----------------------------
ALTER TABLE [dbo].[tbl_vehiculo] ADD PRIMARY KEY ([numero_equipo])
GO

-- ----------------------------
-- Indexes structure for table tblo_estado_vehiculo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tblo_estado_vehiculo
-- ----------------------------
ALTER TABLE [dbo].[tblo_estado_vehiculo] ADD PRIMARY KEY ([idEstadoVehiculo])
GO

-- ----------------------------
-- Indexes structure for table tipoNivelOrg
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tipoNivelOrg
-- ----------------------------
ALTER TABLE [dbo].[tipoNivelOrg] ADD PRIMARY KEY ([idtipo])
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_asig_pol_puesto]
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_pol_puesto] ADD FOREIGN KEY ([fk_asig_rango]) REFERENCES [dbo].[tbl_asig_rango] ([id_asig_rango]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_asig_pol_puesto] ADD FOREIGN KEY ([fk_id_nivel_org_puest]) REFERENCES [dbo].[tbl_nivel_puest] ([idNivelOrgPuesto]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_asig_rango]
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_rango] ADD FOREIGN KEY ([fk_oni_policial]) REFERENCES [dbo].[tbl_oni_policial] ([num_oni]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_asig_rango] ADD FOREIGN KEY ([fk_rango]) REFERENCES [dbo].[tbl_rango] ([id_rango]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_asig_uniforme]
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_uniforme] ADD FOREIGN KEY ([fk_oni_poli_entrega]) REFERENCES [dbo].[tbl_oni_policial] ([num_oni]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_asig_uniforme] ADD FOREIGN KEY ([fk_oni_poli_recibe]) REFERENCES [dbo].[tbl_oni_policial] ([num_oni]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_asig_vehi_delegacion]
-- ----------------------------
ALTER TABLE [dbo].[tbl_asig_vehi_delegacion] ADD FOREIGN KEY ([fk_id_nivel_org]) REFERENCES [dbo].[tbl_nilv_org] ([idNivelOrg]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_asig_vehi_delegacion] ADD FOREIGN KEY ([fk_numero_equipo]) REFERENCES [dbo].[tbl_vehiculo] ([numero_equipo]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_asignacion_actividad_operativo]
-- ----------------------------
ALTER TABLE [dbo].[tbl_asignacion_actividad_operativo] ADD FOREIGN KEY ([id_actividad_fk]) REFERENCES [dbo].[tbl_actividades] ([id_actividad_pk]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_carrera_policial_terminada]
-- ----------------------------
ALTER TABLE [dbo].[tbl_carrera_policial_terminada] ADD FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_detalle_accesorios]
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_accesorios] ADD FOREIGN KEY ([fk_asig_uniforme_pol]) REFERENCES [dbo].[tbl_asig_uniforme] ([id_asig_uniforme_pol]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_detalle_accesorios] ADD FOREIGN KEY ([fk_descrip_unifo_pol]) REFERENCES [dbo].[tbl_descrip_unifo] ([id_descrip_uniforme]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_detalle_estado]
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_estado] ADD FOREIGN KEY ([fk_EstadoVehiculo]) REFERENCES [dbo].[tblo_estado_vehiculo] ([idEstadoVehiculo]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tbl_detalle_estado] ADD FOREIGN KEY ([fk_numeroEquipo]) REFERENCES [dbo].[tbl_vehiculo] ([numero_equipo]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_detalle_placa_onis]
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_placa_onis] ADD FOREIGN KEY ([fk_id_asig_unifo_pol]) REFERENCES [dbo].[tbl_asig_uniforme] ([id_asig_uniforme_pol]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_detalle_placa_onis] ADD FOREIGN KEY ([fk_id_descrip_unifo]) REFERENCES [dbo].[tbl_descrip_unifo] ([id_descrip_uniforme]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_detalle_unifo_pol]
-- ----------------------------
ALTER TABLE [dbo].[tbl_detalle_unifo_pol] ADD FOREIGN KEY ([fk_id_asig_uniforme_pol]) REFERENCES [dbo].[tbl_asig_uniforme] ([id_asig_uniforme_pol]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_detalle_unifo_pol] ADD FOREIGN KEY ([fk_id_descrip_unifor]) REFERENCES [dbo].[tbl_descrip_unifo] ([id_descrip_uniforme]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_detallediscapacidad]
-- ----------------------------
ALTER TABLE [dbo].[tbl_detallediscapacidad] ADD FOREIGN KEY ([duiagente]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tbl_detallediscapacidad] ADD FOREIGN KEY ([iddiscapacidad]) REFERENCES [dbo].[tbl_discapacidad] ([iddiscapacidad]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_familiares]
-- ----------------------------
ALTER TABLE [dbo].[tbl_familiares] ADD FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_licencia_arma]
-- ----------------------------
ALTER TABLE [dbo].[tbl_licencia_arma] ADD FOREIGN KEY ([fk_dui_policial_licencia_arma]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_licencia_conducir]
-- ----------------------------
ALTER TABLE [dbo].[tbl_licencia_conducir] ADD FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_movi_enfermedad]
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_enfermedad] ADD FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_movi_enfermedad] ADD FOREIGN KEY ([fk_id_enfermedad]) REFERENCES [dbo].[tbl_enfermedades] ([id_enfermedad]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_movi_especialidad]
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_especialidad] ADD FOREIGN KEY ([fk_dui_policia]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_movi_especialidad] ADD FOREIGN KEY ([fk_id_especialidad]) REFERENCES [dbo].[tbl_especialidades] ([id_especialidad]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_movi_ingreso]
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_ingreso] ADD FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_movi_salario]
-- ----------------------------
ALTER TABLE [dbo].[tbl_movi_salario] ADD FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_movimi_arma_asig]
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_arma_asig] ADD FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_movimi_arma_asig] ADD FOREIGN KEY ([fk_id_arma]) REFERENCES [dbo].[tbl_arma] ([id_arma ]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_movimi_asignacion_actividad_operativo]
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo] ADD FOREIGN KEY ([dui_fk]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tbl_movimi_asignacion_actividad_operativo] ADD FOREIGN KEY ([id_asignacion_actividad_operativo_fk]) REFERENCES [dbo].[tbl_asignacion_actividad_operativo] ([id_asignacion_actividad_operativo_pk]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_movimi_cap_cursos]
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_cap_cursos] ADD FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_movimi_cap_cursos] ADD FOREIGN KEY ([fk_id_capacitaciones_cursos]) REFERENCES [dbo].[tbl_capacitaciones_cursos] ([id_capacitaciones_cursos]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_movimi_habilidad_tec]
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_habilidad_tec] ADD FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_movimi_habilidad_tec] ADD FOREIGN KEY ([fk_id_hab_tec]) REFERENCES [dbo].[tbl_habilidad_tecnologica] ([id_habilidad_tecnologica]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_movimi_libro_entradas_salidas]
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_libro_entradas_salidas] ADD FOREIGN KEY ([fk_dui]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_movimi_libro_entradas_salidas] ADD FOREIGN KEY ([fk_id_libro_entradas_salidas]) REFERENCES [dbo].[tbl_libro_entradas_salidas] ([id_libro_entradas_salidas]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_movimi_promo]
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_promo] ADD FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_movimi_promo] ADD FOREIGN KEY ([fk_id_promocion]) REFERENCES [dbo].[tbl_promocion] ([id_promocion]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_movimi_sansiones]
-- ----------------------------
ALTER TABLE [dbo].[tbl_movimi_sansiones] ADD FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_movimi_sansiones] ADD FOREIGN KEY ([fk_id_sansion]) REFERENCES [dbo].[tbl_sansiones] ([id_sansiones]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_nilv_org]
-- ----------------------------
ALTER TABLE [dbo].[tbl_nilv_org] ADD FOREIGN KEY ([tipoNivel]) REFERENCES [dbo].[tipoNivelOrg] ([idtipo]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_nivel_academico]
-- ----------------------------
ALTER TABLE [dbo].[tbl_nivel_academico] ADD FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_nivel_academico] ADD FOREIGN KEY ([fk_id_carrera_oficio]) REFERENCES [dbo].[tbl_carrera_oficio] ([id_carrera_oficio]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_nivel_puest]
-- ----------------------------
ALTER TABLE [dbo].[tbl_nivel_puest] ADD FOREIGN KEY ([idNivelOrg]) REFERENCES [dbo].[tbl_nilv_org] ([idNivelOrg]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_nivel_puest] ADD FOREIGN KEY ([idPuesto]) REFERENCES [dbo].[tbl_puesto] ([idPuesto]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_oni_policial]
-- ----------------------------
ALTER TABLE [dbo].[tbl_oni_policial] ADD FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_permiso_con_sin_goce_sueldo]
-- ----------------------------
ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] ADD FOREIGN KEY ([fk_dui_jefe_inmediato]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] ADD FOREIGN KEY ([fk_dui_jefe_inmediato_superior]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] ADD FOREIGN KEY ([fk_dui_solicitante]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_permiso_con_sin_goce_sueldo] ADD FOREIGN KEY ([id_motivo_permiso]) REFERENCES [dbo].[tbl_motivo_permiso] ([id_motivo_permiso]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_permisos]
-- ----------------------------
ALTER TABLE [dbo].[tbl_permisos] ADD FOREIGN KEY ([moduloid]) REFERENCES [dbo].[tbl_modulo] ([idmodulo]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_permisos] ADD FOREIGN KEY ([rolid]) REFERENCES [dbo].[tbl_rol] ([idrol]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_rango]
-- ----------------------------
ALTER TABLE [dbo].[tbl_rango] ADD FOREIGN KEY ([fk_nivel]) REFERENCES [dbo].[tbl_nivel] ([id_nivel]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_sansiones]
-- ----------------------------
ALTER TABLE [dbo].[tbl_sansiones] ADD FOREIGN KEY ([fk_id_faltas]) REFERENCES [dbo].[tbl_faltas] ([id_faltas]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_telefono]
-- ----------------------------
ALTER TABLE [dbo].[tbl_telefono] ADD FOREIGN KEY ([fk_dui_policial]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_usuario]
-- ----------------------------
ALTER TABLE [dbo].[tbl_usuario] ADD FOREIGN KEY ([fk_dui]) REFERENCES [dbo].[tbl_datos_personales] ([dui_pk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[tbl_usuario] ADD FOREIGN KEY ([rolid]) REFERENCES [dbo].[tbl_rol] ([idrol]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tbl_vehiculo]
-- ----------------------------
ALTER TABLE [dbo].[tbl_vehiculo] ADD FOREIGN KEY ([fk_tipoVehiculo]) REFERENCES [dbo].[tbl_tipo_vehiculo] ([idTipoVehiculo]) ON DELETE CASCADE ON UPDATE CASCADE
GO
