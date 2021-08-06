-- CREACION TABLA PARA USUARIO GENERAL
CREATE TABLE usuario_general (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  nombres_usuario VARCHAR(50) NOT NULL,
  apellidos_usuario VARCHAR(50) NOT NULL,
  alias_usuario VARCHAR(45) NOT NULL,
  pais_usuario VARCHAR(50),
  telefono_usuario INT NOT NULL,
  genero_usuario VARCHAR(12) NOT NULL,
  fc_registro_usuario DATE NOT NULL,
  descripcion_usuario VARCHAR(255),
  PRIMARY KEY (id_usuario)
) ENGINE = InnoDB;

------------------------------------------------------
-- CREACION TABLA PARA REDES
-- CREATE TABLE redes_usu (
--   id_redes INT NOT NULL AUTO_INCREMENT,
--   facebook_usu VARCHAR(70) NULL,
--   instagram_usu VARCHAR(70) NULL,
--   twitter_usu VARCHAR(70) NULL, 
--   telegram_usu VARCHAR(70) NULL,
--   linkedin_usu VARCHAR(70) NULL,
--   web_url_usu VARCHAR(80) NULL,
--   PRIMARY KEY (id_redes)
-- ) ENGINE = InnoDB;
------------------------------------------------------

CREATE TABLE dominio_redes (
  id_dominio INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  nombre_red VARCHAR(30),
  nombre_usu VARCHAR(45),
  PRIMARY KEY (id_dominio),
  FOREIGN KEY (id_usuario) REFERENCES usuario_general (id_usuario)
) ENGINNE = InnoDB;

-- CREACION TABLA PARA RELACION Y ESTRACCIÓN DE DATOS PARA MOSTRAR 
-- INFORMACION SOBRE UN USUARIO
CREATE TABLE vista_info_usu (
  id_info INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  id_redes INT NOT NULL,
  PRIMARY KEY (id_info)
  FOREIGN KEY (id_usuario) REFERENCES usuario_general (id_usuario),
  FOREIGN KEY (id_redes) REFERENCES redes_usu (id_redes)
) ENGINE = InnoDB;

------------------------------------------------------
-- CREACION TABLA PARA RELACION Y ESTRACCIÓN DE DATOS PARA MOSTRAR 
-- INFORMACION SOBRE LAS REDES USUARIO
-- CREATE TABLE dominioRedesSociales (
--   id_red INT NOT NULL AUTO_INCREMENT,
--   id_redes INT NOT NULL,
--   Descripcion VARCHAR(255) NOT NULL,
--   fechaCreacion DATE NOT NULL,
--   UsuarioCreacion VARCHAR(40),
--   MaquinaCreacion VARCHAR(50),
--   PRIMARY KEY (id_red),
--   FOREIGN KEY (id_redes) REFERENCES redesUsu (id_redes)
-- ) ENGINE = InnoDB;
-------------------------------------------------------

-- CREACION TABLA PARA LENGUAJES DE PROGRAMACIÓN
CREATE TABLE lenguages_program (
  id_lp INT NOT NULL AUTO_INCREMENT, 
  nombre_lp VARCHAR(45) NOT NULL, 
  nivel_lp VARCHAR(12) NOT NULL,
  PRIMARY KEY (id_lp)
) ENGINE = InnoDB;

-- CREACION TABLA PARA IDIOMAS
CREATE TABLE idiomas (
  id_lang INT NOT NULL AUTO_INCREMENT, 
  nombre_lang VARCHAR(45) NOT NULL, 
  nivel_lang VARCHAR(12) NOT NULL,
  PRIMARY KEY (id_lang)
) ENGINE = InnoDB;

-- CREACION TABLA PARA RELACION Y ESTRACCIÓN DE DATOS PARA MOSTRAR 
-- INFORMACION SOBRE LAS HABILIDADES DEL USUARIO
CREATE TABLE habilidades_usuario (
  id_hu INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  id_lp INT NOT NULL,
  id_lang INT NOT NULL,
  PRIMARY KEY (id_hu),
  FOREIGN KEY (id_lp) REFERENCES lenguages_program (id_lp),
  FOREIGN KEY (id_lang) REFERENCES idiomas (id_lang),
  FOREIGN KEY (id_usuario) REFERENCES usuarioGenera (id_usuario)
) ENGINE = InnoDB;

-------------------- Arreglado por el amor de Dios ole

CREATE TABLE usuario_general (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  nombres_usuario VARCHAR(50) NOT NULL,
  apellidos_usuario VARCHAR(50) NOT NULL,
  alias_usuario VARCHAR(45) NOT NULL,
  pais_usuario VARCHAR(50),
  telefono_usuario INT NOT NULL,
  genero_usuario VARCHAR(12) NOT NULL,
  fc_registro_usuario DATE NOT NULL,
  descripcion_usuario VARCHAR(255),
  PRIMARY KEY (id_usuario)
) ENGINE = InnoDB;

CREATE TABLE lenguages_program (
  id_lp INT NOT NULL AUTO_INCREMENT, 
  nombre_lp VARCHAR(45) NOT NULL, 
  nivel_lp VARCHAR(12) NOT NULL,
  PRIMARY KEY (id_lp)
) ENGINE = InnoDB;

CREATE TABLE idiomas (
  id_lang INT NOT NULL AUTO_INCREMENT, 
  nombre_lang VARCHAR(45) NOT NULL, 
  nivel_lang VARCHAR(12) NOT NULL,
  PRIMARY KEY (id_lang)
) ENGINE = InnoDB;

CREATE TABLE dominio_redes (
  id_dominio INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  nombre_red VARCHAR(30),
  nombre_usu VARCHAR(45),
  PRIMARY KEY (id_dominio),
  FOREIGN KEY (id_usuario) REFERENCES usuario_general (id_usuario)
) ENGINE = InnoDB;

CREATE TABLE vista_info_usu (
  id_info INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  id_dominio INT NOT NULL,
  PRIMARY KEY (id_info),
  FOREIGN KEY (id_usuario) REFERENCES usuario_general (id_usuario),
  FOREIGN KEY (id_dominio) REFERENCES dominio_redes (id_dominio)
) ENGINE = InnoDB;

CREATE TABLE habilidades_usuario (
  id_hu INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  id_lp INT NOT NULL,
  id_lang INT NOT NULL,
  PRIMARY KEY (id_hu),
  FOREIGN KEY (id_lp) REFERENCES lenguages_program (id_lp),
  FOREIGN KEY (id_lang) REFERENCES idiomas (id_lang),
  FOREIGN KEY (id_usuario) REFERENCES usuario_general (id_usuario)
) ENGINE = InnoDB;