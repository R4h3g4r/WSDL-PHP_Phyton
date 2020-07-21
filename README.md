# Proyecto para obtencion de info tablas

## Esquema
wsdl_tablas

## Definicion de la tabla
CREATE TABLE `tablas_parametros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tabla_path` varchar(5000) DEFAULT NULL,
  `creado_en` datetime DEFAULT current_timestamp(),
  `estado` tinyint(1) DEFAULT 1,
  `modificado_en` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1389 DEFAULT CHARSET=utf8;
