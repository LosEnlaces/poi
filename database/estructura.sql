CREATE TABLE aulas (
  id_aula INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  edificios_id_edificio INTEGER UNSIGNED NOT NULL,
  cat_espacios_id_cat INTEGER UNSIGNED NOT NULL,
  codigo CHAR NULL,
  planta INTEGER UNSIGNED NULL,
  coord_x FLOAT NULL,
  coord_y FLOAT NULL,
  PRIMARY KEY(id_aula),
  INDEX aulas_FKIndex1(cat_espacios_id_cat),
  INDEX aulas_FKIndex2(edificios_id_edificio)
);

CREATE TABLE cat_espacios (
  id_cat INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre CHAR NULL,
  descr TEXT NULL,
  PRIMARY KEY(id_cat)
);

CREATE TABLE ciclos (
  id_ciclo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  familias_id_familia INTEGER UNSIGNED NOT NULL,
  nombre CHAR NULL,
  codigo CHAR NULL,
  PRIMARY KEY(id_ciclo, familias_id_familia),
  INDEX ciclos_FKIndex1(familias_id_familia)
);

CREATE TABLE cursos (
  id_curso INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  ciclos_familias_id_familia INTEGER UNSIGNED NOT NULL,
  ciclos_id_ciclo INTEGER UNSIGNED NOT NULL,
  nombre CHAR NULL,
  codigo CHAR NULL,
  PRIMARY KEY(id_curso),
  INDEX cursos_FKIndex1(ciclos_id_ciclo, ciclos_familias_id_familia)
);

CREATE TABLE edificios (
  id_edificio INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre CHAR NULL,
  descripcion TEXT NULL,
  PRIMARY KEY(id_edificio)
);

CREATE TABLE familias (
  id_familia INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre CHAR NULL,
  color CHAR NULL,
  PRIMARY KEY(id_familia)
);

CREATE TABLE horarios (
  id_horario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  profesores_id_profesor INTEGER UNSIGNED NOT NULL,
  aulas_id_aula INTEGER UNSIGNED NOT NULL,
  modulos_id_modulo INTEGER UNSIGNED NOT NULL,
  dia_semana CHAR NULL,
  sesion INTEGER UNSIGNED NULL,
  inicio CHAR NULL,
  fin CHAR NULL,
  PRIMARY KEY(id_horario, profesores_id_profesor, aulas_id_aula),
  INDEX horarios_FKIndex1(profesores_id_profesor),
  INDEX horarios_FKIndex2(aulas_id_aula),
  INDEX horarios_FKIndex3(modulos_id_modulo)
);

CREATE TABLE modulos (
  id_modulo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  cursos_id_curso INTEGER UNSIGNED NOT NULL,
  nombre CHAR NULL,
  codigo CHAR NULL,
  PRIMARY KEY(id_modulo),
  INDEX modulos_FKIndex1(cursos_id_curso)
);

CREATE TABLE profesores (
  id_profesor INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre CHAR NULL,
  apellido1 CHAR NULL,
  apellido2 CHAR NULL,
  reg CHAR NULL,
  PRIMARY KEY(id_profesor)
);


