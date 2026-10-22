USE campus_la_mar;

-- PRUEBA 1: Documento de identidad duplicado.
-- Resultado esperado: ERROR 1062 (UNIQUE).
-- Ejecutar por separado:
-- INSERT INTO usuarios
-- (nombre, apellidos, documento_identidad, email, password_hash)
-- VALUES ('Usuario', 'Prueba', 'TEST1001A',
-- 'duplicado@example.com', 'hash_prueba');

-- PRUEBA 2: Alumno inexistente en una matricula.
-- Resultado esperado: ERROR 1452 (clave foranea).
-- Ejecutar por separado:
-- INSERT INTO matriculas (alumno_id, grupo_id, estado)
-- VALUES (9999, 1, 'activa');

-- PRUEBA 3: Campo obligatorio sin valor.
-- Resultado esperado: ERROR 1364 (NOT NULL).
-- Ejecutar por separado:
-- INSERT INTO usuarios
-- (nombre, documento_identidad, email, password_hash)
-- VALUES ('Usuario', 'TEST9999Z',
-- 'sin.apellidos@example.com', 'hash_prueba');

-- PRUEBA 4: Borrado de usuario relacionado.
-- Resultado esperado: ERROR 1451 (clave foranea).
-- Ejecutar por separado:
-- DELETE FROM usuarios WHERE id = 1;

-- PRUEBA 5: Superacion de las plazas maximas.
-- La prueba permitio 3 matriculas para 2 plazas.
-- Se utilizo ROLLBACK para deshacer la insercion.
-- Ejecutar por separado y dentro de una transaccion:
-- START TRANSACTION;
-- INSERT INTO matriculas (alumno_id, grupo_id, estado)
-- VALUES (6, 1, 'activa');
-- SELECT COUNT(*) FROM matriculas
-- WHERE grupo_id = 1 AND estado = 'activa';
-- ROLLBACK;

-- PRUEBA 6: Comprobacion de triggers de edad.
-- No se encontraron triggers.
-- Ejecutar por separado:
-- SHOW TRIGGERS FROM campus_la_mar;

-- COMPROBACION FINAL: conteo de registros.
-- Resultado comprobado: 6 usuarios, 3 matriculas y
-- 1 registro en lista de espera.
