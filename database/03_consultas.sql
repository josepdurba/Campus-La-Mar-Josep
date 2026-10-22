USE campus_la_mar;

-- 1. Alumnos matriculados en cada curso
SELECT
    c.nombre AS curso,
    u.nombre AS alumno,
    u.apellidos,
    m.estado AS estado_matricula
FROM matriculas m
JOIN usuarios u ON m.alumno_id = u.id
JOIN grupos g ON m.grupo_id = g.id
JOIN cursos c ON g.curso_id = c.id
WHERE m.estado = 'activa'
ORDER BY c.nombre, u.apellidos;


-- 2. Docentes asignados a cada curso
SELECT
    c.nombre AS curso,
    u.nombre AS docente,
    u.apellidos
FROM docente_curso dc
JOIN usuarios u ON dc.docente_id = u.id
JOIN cursos c ON dc.curso_id = c.id
ORDER BY c.nombre;


-- 3. Plazas ocupadas y disponibles por grupo
SELECT
    c.nombre AS curso,
    g.nombre AS grupo,
    g.plazas_maximas,
    COUNT(m.id) AS plazas_ocupadas,
    g.plazas_maximas - COUNT(m.id) AS plazas_disponibles
FROM grupos g
JOIN cursos c ON g.curso_id = c.id
LEFT JOIN matriculas m
    ON g.id = m.grupo_id AND m.estado = 'activa'
GROUP BY c.id, c.nombre, g.id, g.nombre, g.plazas_maximas
ORDER BY c.nombre;


-- 4. Alumnos en lista de espera
SELECT
    c.nombre AS curso,
    g.nombre AS grupo,
    u.nombre AS alumno,
    u.apellidos,
    le.fecha_solicitud,
    le.estado
FROM listas_espera le
JOIN usuarios u ON le.alumno_id = u.id
JOIN grupos g ON le.grupo_id = g.id
JOIN cursos c ON g.curso_id = c.id
WHERE le.estado = 'en_espera'
ORDER BY le.fecha_solicitud;


-- 5. Cursos y sus areas formativas
SELECT
    c.codigo,
    c.nombre AS curso,
    a.nombre AS area,
    c.modalidad,
    c.duracion_horas,
    c.estado
FROM cursos c
JOIN areas a ON c.area_id = a.id
ORDER BY a.nombre, c.nombre;


-- 6. Sesiones con su aula y horario
SELECT
    c.nombre AS curso,
    g.nombre AS grupo,
    s.fecha,
    s.hora_inicio,
    s.hora_fin,
    a.nombre AS aula
FROM sesiones s
JOIN grupos g ON s.grupo_id = g.id
JOIN cursos c ON g.curso_id = c.id
LEFT JOIN aulas a ON s.aula_id = a.id
ORDER BY s.fecha, s.hora_inicio;
