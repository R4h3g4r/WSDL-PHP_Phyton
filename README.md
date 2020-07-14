# Proyecto para obtencion de info tablas

## Definicion de la tabla
CREATE TABLE test.tablas_parametros (
	id INT auto_increment NOT NULL,
	tabla_nombre varchar(500) NULL,
	tabla_path varchar(3000) NULL,
	creado_en DATETIME DEFAULT current_timestamp() NULL,
	estado BOOL DEFAULT 1 NULL,
	modificado_en DATETIME DEFAULT current_timestamp() NULL,
	CONSTRAINT tablas_parametros_pk PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
