# Repositorio de Prácticas y Scripts SQL — Administración de Bases de Datos (MySQL)

Este repositorio reúne el conjunto completo de scripts, consultas, esquemas relacionales y procedimientos de administración de bases de datos desarrollados durante el módulo formativo **INCO-MF036_3: Administración de Base de Datos**, perteneciente al **Bachillerato Técnico en Diseño y Desarrollo de Aplicaciones Informáticas** (Nivel 3).

El objetivo principal de esta colección es consolidar las competencias operativas de un Administrador de Bases de Datos (DBA) y Desarrollador Backend en el ecosistema **MySQL Server**, abarcando desde la definición lógica y física de estructuras hasta la manipulación avanzada de datos, optimización de consultas, gestión de seguridad y procedimientos de respaldo.

---

## 1. Estructura y Organización del Repositorio

El código SQL se encuentra organizado de forma modular para facilitar su exploración, ejecución e integración:

```text
.
├── 01-ddl-definicion-estructuras/
│   ├── 01-creacion-bases-datos.sql
│   ├── 02-tablas-e-integridad.sql
│   ├── 03-modificaciones-alter-table.sql
│   └── 04-eliminacion-drop-truncate.sql
├── 02-dml-manipulacion-consultas/
│   ├── 01-insercion-registros-insert.sql
│   ├── 02-consultas-filtrado-select.sql
│   ├── 03-agrupamiento-funciones-agregadas.sql
│   ├── 04-consultas-multitabla-joins.sql
│   └── 05-mantenimiento-update-delete.sql
├── 03-dcl-administracion-dba/
│   ├── 01-usuarios-roles-permisos.sql
│   ├── 02-seguridad-validate-password.sql
│   └── 03-monitoreo-slow-query-log.sql
├── 04-casos-practicos-evaluaciones/
│   ├── centro-educativo-db.sql
│   ├── politecnico-san-jose-db.sql
│   └── cuestionario-consultas-solucion.sql
└── README.md
```

---

## 2. Cobertura Temática y Sublenguajes SQL

Las prácticas contenidas en este repositorio abordan los tres sublenguajes fundamentales de SQL en MySQL:

### Lenguaje de Definición de Datos (DDL)
* **Creación y selección de esquemas:** Uso de `CREATE DATABASE IF NOT EXISTS`, `SHOW DATABASES` y `USE`.
* **Definición de tablas y dominios:** Tipos de datos numéricos (`INT`, `DECIMAL`), cadenas (`VARCHAR`), fechas (`DATE`, `TIMESTAMP`) y booleanos.
* **Restricciones de Integridad Referencial:** Implementación de `PRIMARY KEY` (auto-incrementales), `FOREIGN KEY` con cláusulas de referencia, `NOT NULL`, `UNIQUE`, `DEFAULT` y `CHECK`.
* **Evolución del esquema:** Alteración de estructuras mediante `ALTER TABLE` (`ADD`, `MODIFY`, `DROP COLUMN`, `CHANGE`, `RENAME TABLE`).

### Lenguaje de Manipulación de Datos (DML)
* **Poblado de información:** Inserción individual, múltiple y masiva mediante `INSERT INTO` y `INSERT INTO ... SELECT`.
* **Consultas de selección:** Recuperación de datos con `SELECT`, eliminación de duplicados con `DISTINCT`, alias con `AS`, ordenamiento con `ORDER BY` y límites con `LIMIT`.
* **Filtrado condicional:** Operadores lógicos (`AND`, `OR`, `NOT`), rangos (`BETWEEN`), conjuntos (`IN`), patrones de texto (`LIKE` con `%` y `_`) y evaluación de nulos (`IS NULL`).
* **Agrupamiento y agregación:** Métricas con `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`, agrupamiento con `GROUP BY` y filtrado de grupos con `HAVING`.
* **Combinación multitabla:** Relaciones lógicas mediante `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` y uniones de conjuntos con `UNION`.
* **Mantenimiento seguro:** Actualizaciones con `UPDATE` y eliminaciones con `DELETE FROM` aplicando restricciones estrictas con `WHERE`.

### Lenguaje de Control y Administración DBA (DCL y Parámetros del Motor)
* **Control de accesos:** Creación de usuarios con restricción de host (`'usuario'@'localhost'` vs `'usuario'@'192.168.1.%'`), gestión de roles y asignación de privilegios con `GRANT` y `REVOKE`.
* **Políticas de seguridad:** Configuración del plugin `validate_password` y cifrado de datos sensibles con `SHA2()`.
* **Monitoreo y rendimiento:** Diagnóstico de hilos con `SHOW PROCESSLIST`, `SHOW ENGINE INNODB STATUS` y habilitación del `slow_query_log`.

---

## 3. Esquemas de Bases de Datos Implementados

### Base de Datos: `centro_educativo`
Esquema relacional diseñado para la gestión de entidades académicas, colegios, estudiantes y personal docente:

* **`colegio`**: Almacena información institucional (`id_colegio`, `nombre_colegio`, `direccion`, `telefono`, `correo`, `cant_estudiante`).
* **`estudiante`**: Registra la información de los alumnos (`ind_estudiante`, `nombre`, `apellido`, `cedula` [UNIQUE], `fecha_nacimiento`, `correo`, `activo`, `fecha_de_registro`).
* **`profesor`**: Contiene los datos del cuerpo docente (`id_profesor`, `nombre`, `apellido`, `telefono`, `especialidad`, `direccion`, `fecha_nacimiento`, `fecha_de_registro`).

### Base de Datos: `politecnico_db`
Esquema enfocado en la integridad referencial entre carreras técnicas y estudiantes matriculados:

* **`carrera`**: Definiendo la oferta académica (`id_carrera`, `nombre_carrera`, `duracion_semestres`).
* **`estudiante`**: Matrícula estudiantil vinculada mediante clave foránea (`FOREIGN KEY (id_carrera) REFERENCES carrera(id_carrera)`).

---

## 4. Convenciones de Código Aplicadas

Para garantizar la legibilidad y mantenibilidad del código SQL, se han seguido las siguientes buenas prácticas:
* **Palabras reservadas en mayúsculas:** `SELECT`, `FROM`, `WHERE`, `CREATE TABLE`, `PRIMARY KEY`.
* **Nombres de objetos en minúsculas y singular/plural coherente:** Identificadores con guion bajo (`snake_case`), como `fecha_nacimiento` o `id_colegio`.
* **Uso obligatorio de comentarios explicativos:** Documentación de cada bloque mediante `--` para líneas individuales y `/* ... */` para comentarios multilínea.
* **Sentencias finalizadas con punto y coma (`;`).**

---
