# TP-Final-Data-sets
## Introducción:
Este proyecto contiene el diseño, creación, optimización y vistas de una base de datos en MySQL para almacenar y analizar datos sobre el comportamiento de participantes en investigaciones sobre la procrastinación.

#### Modelo de Datos y Estructura:
La base de datos está normalizada para evitar la repetición de datos, y cuenta con una columna flexible de tipo JSON para preservar la información original de los participantes.

#### Tablas:
Genero: Clasificación del género de los participantes.
gene_cod  (TINYINT , PK)
gene_des  (VARCHAR)

Rango_edad: Rangos de edad predefinidos.
randad_cod  (TINYINT , PK)
randad_des  (VARCHAR)

Educacion: Nivel educativo alcanzado.
educa_cod  (TINYINT , PK)
educa_des  (VARCHAR)

Estado_laboral: Situación laboral del encuestado.
estlab_cod  (TINYINT , PK)
estlab_des  (VARCHAR)

Ocupacion: Área o profesión específica.
ocup_codi  (TINYINT , PK)
ocup_desc  (VARCHAR)

#### Tabla Principal 
Participantes: Registra la información de cada individuo involucrado en el estudio.
- parti_cod SMALLINT
- parti_id VARCHAR
- parti_fuent VARCHAR
- parti_flag VARCHAR
- parti_age TINYINT
- parti_ash DECIMAL
- id_genero (TINYINT , FK → Genero)
- id_rango_edad (TINYINT , FK → Rango_edad)
- id_educacion (TINYINT , FK → Educacion)
- id_estado_laboral (TINYINT , FK → Estado_laboral)
- id_ocupacion (TINYINT , FK → Ocupacion)

#### 4. Vistas:
Se han creado vistas para simplificar las consultas complejas mediante LEFT JOIN, facilitando el análisis directo de los perfiles de los participantes:

- vista_participantes_genero: Relaciona a cada participante con su respectivo género.
- vista_participantes_edad: Muestra la edad y el rango correspondiente de cada individuo.
- vista_participantes_educacion: Agrupa a los participantes según su nivel educativo alcanzado.
- vista_participantes_laboral: Combina la situación laboral y la ocupación de cada participante.

Para verificar las vistas creadas en el sistema, puedes utilizar:
```sql
SHOW FULL TABLES WHERE Table_type = 'VIEW';
```

####  Optimización e Índices
Se agregaron índices en las Claves Foráneas y campos de filtrado en la tabla Participantes para acelerar las consultas de segmentación:

- ID_participantes_edad
- ID_participantes_genero
- ID_participantes_rango_edad
- ID_participantes_educacion
- ID_participantes_estado_laboral
- ID_participantes_ocupacion

#### Guía de Uso

##### Requisitos Previos:
MySQL Server 8.0 o superior (compatible con tipo de dato JSON).
Cliente SQL (MySQL Workbench, DBeaver, phpMyAdmin).

#### Instalación y Ejecución:
 
Crea la base de datos ejecutando:
```sql
CREATE DATABASE IF NOT EXISTS procrastinacion;
USE procrastinacion;
```
Ejecuta el script principal de tablas e índices (procrastinacion_proyecto.sql).
Ejecuta el script complementario de vistas (crear_vistas.sql).

#### Importar archivo de Respaldo:
Desde MySQL Workbench
Abre MySQL Workbench y conéctate a tu servidor local o remoto.
En el menú superior, ve a Server > Data Import.
Selecciona la opción Import from Self-Contained File.
Busca y selecciona tu archivo .sql.
En Default Target Schema, selecciona procrastinacion (o presiona New... para crearla).
Haz clic en el botón Start Import en la esquina inferior derecha.

#### Consultas de Verificación:
El script incluye consultas rápidas para validar la integridad del esquema y conteos generales:
-- Verificar tablas creadas
SHOW TABLES;

-- Total de participantes registrados
SELECT COUNT(*) AS total_participantes FROM Participantes;

-- Métricas cuantitativas de catálogos
```sql
SELECT COUNT(*) AS total_generos FROM Genero;
SELECT COUNT(*) AS total_rangos FROM Rango_edad;
SELECT COUNT(*) AS total_niveles_educativos FROM Educacion;
SELECT COUNT(*) AS total_estados_laborales FROM Estado_laboral;
SELECT COUNT(*) AS total_ocupaciones FROM Ocupacion;
```

#### Creacion de tablas:
Para crear las tablas hay que ejecutar las siguientes consultas:

```sql
`create  table todo(
	participant_id VARCHAR
	data_source VARCHAR
	synthetic_flag VARCHAR
	age VARCHAR
	age_group VARCHAR
	gender VARCHAR
	education_level VARCHAR
	employment_status VARCHAR
	occupation_category VARCHAR
	average_sleep_hours VARCHAR
);`
```

Esta sera la primera tabla que contenga todos los datos del CSV.

luego creamos las tablas con los datos ya normalisaos:

Tabla Ocupacion
```sql
`CREATE TABLE ocupacion(
	ocup_codi TINYINT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
	ocup_desc VARCHAR(50) UNIQUE
);`
```

Tabla Educacion
```sql
`CREATE TABLE educacion (
	educa_cod TINYINT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
	educa_des VARCHAR(50) UNIQUE
);`
```

Tabla Estado Laboral
```sql
`CREATE TABLE estado_laboral(
	estlab_cod TINYINT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
	estlab_des VARCHAR(50) UNIQUE
);`
```

Tabla Rango de edad
```sql
`CREATE TABLE Rango_edad(
	randad_cod TINYINT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
	randad_des VARCHAR(50) UNIQUE
);`

```
Tabla Generos
```sql
`CREATE TABLE generos(
	gene_cod TINYINT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
	gene_des VARCHAR(50) UNIQUE
);`
```

Tabla principal de los Participantes
```sql
`CREATE TABLE participantes(
	parti_cod SMALLINT(4) UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
	parti_id VARCHAR(10) UNIQUE,
	parti_fuent VARCHAR(20),
	parti_flag VARCHAR(1),
	parti_age TINYINT(2) UNSIGNED NOT NULL,
	parti_ash DECIMAL(10,1) NOT NULL,
	parti_gen TINYINT UNSIGNED,
	parti_ocu TINYINT UNSIGNED,
	parti_esla TINYINT UNSIGNED,
	parti_edu TINYINT UNSIGNED,
	parti_rang TINYINT UNSIGNED,
	FOREIGN KEY (parti_gen) REFERENCES generos(gene_cod),
	FOREIGN KEY (parti_ocu) REFERENCES ocupacion(ocup_codi),
	FOREIGN KEY (parti_esla) REFERENCES estado_laboral(estlab_cod),
	FOREIGN KEY (parti_edu) REFERENCES educacion(educa_cod),
	FOREIGN KEY (parti_rang) REFERENCES Rango_edad(randad_cod)
);`
```
#### Insersion de datos

Antes de ingresar los datos hay que asegurarse de que no haya ninguna fila de datos vacio o nula en nuestra tabla todo, en nuestro caso al ser solo 3 en todos los registros y como solo contamos con 300 registros lo hicimos de manera manual desde la interfaz de HeidiSQL.

Luego procedemos con la Insersion de datos a nuestras tablas:

Tabla de ocupacion
```sql
INSERT IGNORE INTO ocupacion (ocup_desc)
SELECT (occupation_category) FROM todo;
```
Tabla de Rango de edad
```sql
INSERT IGNORE INTO Rango_edad (randad_des)
SELECT (age_group) FROM todo;
```
Tabla de Estado laboral
```sql
INSERT IGNORE INTO estado_laboral (estlab_des)
SELECT (employment_status) FROM todo;
```
Tabla de Nivel educativo
```sql
INSERT IGNORE INTO educacion (educa_des)
SELECT (education_level) FROM todo;
```
Tabla de Generos
```sql
INSERT IGNORE INTO generos (gene_des)
SELECT (gender) FROM todo;
```

#### Actualizacion de datos para claves secundarias

Una vez insertamos los datos en sus respectivas tablas toca remplar los datos de las comlumnas en la tabla todo, con los ids de dichas descripciones, para los cuales utilizaremos updates.

FK de Ocupacion
```sql
UPDATE todo
JOIN ocupacion ON todo.occupation_category = ocupacion.ocup_desc
SET todo.occupation_category = ocupacion.ocup_codi
WHERE todo.occupation_category = ocupacion.ocup_desc
```
FK de Genero
```sql
UPDATE todo
JOIN generos ON todo.gender = generos.gene_des
SET todo.gender = generos.gene_cod
WHERE todo.gender = generos.gene_des;
```
FK de Rando de edad
```sql
UPDATE todo
JOIN Rango_edad ON todo.age_group = Rango_edad.randad_des
SET todo.age_group = Rango_edad.randad_cod
WHERE todo.age_group = Rango_edad.randad_des;
```
FK de Estado Laboral
```sql
UPDATE todo
JOIN estado_laboral ON todo.employment_status = estado_laboral.estlab_des
SET todo.employment_status = estado_laboral.estlab_cod
WHERE todo.employment_status = estado_laboral.estlab_des;
```
FK de Nivel de educacion
```sql
UPDATE todo
JOIN educacion ON todo.education_level = educacion.educa_des
SET todo.education_level = educacion.educa_cod
WHERE todo.education_level = educacion.educa_des;
```

#### Alteracion de la tabla todo

Ahora toca alterr la tabla todo para que coincidan los tipos de datos entre tablas para hacer el insert final.
```sql
ALTER TABLE todo MODIFY COLUMN gender TINYINT UNSIGNED;
```

```sql
ALTER TABLE todo MODIFY COLUMN education_level TINYINT UNSIGNED;
```

```sql
ALTER TABLE todo MODIFY COLUMN employment_status TINYINT UNSIGNED;
```

```sql
ALTER TABLE todo MODIFY COLUMN occupation_category TINYINT UNSIGNED;
```

```sql
ALTER TABLE todo MODIFY COLUMN age_group TINYINT UNSIGNED;
```

```sql
ALTER TABLE todo MODIFY COLUMN data_source VARCHAR(20);
```

```sql
ALTER TABLE todo MODIFY COLUMN age TINYINT(2) UNSIGNED ;
```

```sql
ALTER TABLE todo MODIFY COLUMN average_sleep_hours DECIMAL(10,1);
```
#### Insert final
Insertamos los datos en nuestra tabla principal con sus fk.

```sql
INSERT INTO participantes (
	parti_id ,	parti_fuent ,	parti_flag ,	parti_age ,	parti_ash ,	parti_gen ,	parti_ocu ,	parti_esla ,	parti_edu ,parti_rang )
SELECT
	participant_id ,	data_source ,	synthetic_flag ,	age ,	average_sleep_hours  ,	gender,	occupation_category ,	employment_status ,	education_level ,	age_group
	FROM todo;
```
#### Index
Creamos los index para luego utilizar en futuras consultas en laa tabla de Participantes.

```sql
CREATE INDEX idx_participantes_edad
ON participantes (parti_age);
```

```sql
CREATE INDEX idx_participantes_genero
ON participantes (parti_gen);
```

```sql
CREATE INDEX idx_participantes_rango_edad
ON participantes (parti_rang);
```

```sql
CREATE INDEX idx_participantes_educacion
ON participantes (parti_edu);
```

```sql
CREATE INDEX idx_participantes_estado_laboral
ON participantes (parti_esla);
```

```sql
CREATE INDEX idx_participantes_ocupacion
ON participantes (parti_ocu);
```
#### Vistas
Creamos las respectivas vistas
-- Vista 1: participantes con su género
```sql
CREATE OR REPLACE VIEW vista_participantes_genero AS
SELECT
    p.parti_cod ,
    p.parti_gen  ,
    g.gene_cod  AS generos
FROM participantes p
LEFT JOIN generos g
    ON p.parti_gen  = g.gene_cod ;
```

-- Vista 2: participantes por rango de edad
```sql
CREATE OR REPLACE VIEW vista_participantes_edad AS
SELECT
    p.parti_cod ,
    p.parti_age ,
    r.randad_cod  AS Rango_edad
FROM participantes p
LEFT JOIN Rango_edad r
    ON p.parti_rang  = r.randad_cod ;

```
-- Vista 3: participantes por nivel educativo
```sql
CREATE OR REPLACE VIEW vista_participantes_educacion AS
SELECT
    p.parti_cod ,
    e.educa_cod  AS parti_edu 
FROM participantes p
LEFT JOIN educacion e
    ON p.parti_edu  = e.educa_cod ;
```

-- Vista 4: participantes por situación laboral y ocupación
```sql
CREATE OR REPLACE VIEW vista_participantes_laboral AS
SELECT
    p.parti_cod ,
    el.estlab_cod  AS estado_laboral,
    o.ocup_codi  AS ocupacion
FROM participantes p
LEFT JOIN estado_laboral el
    ON p.parti_esla  = el.estlab_cod 
LEFT JOIN ocupacion o
    ON p.parti_ocu  = o.ocup_codi ;
