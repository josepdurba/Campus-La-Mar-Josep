USE campus_la_mar;

-- Areas formativas
INSERT INTO areas (nombre, descripcion) VALUES
('Informatica', 'Formacion en desarrollo y sistemas'),
('Administracion', 'Formacion administrativa y empresarial');

-- Roles
INSERT INTO roles (nombre) VALUES
('administrador'),
('docente'),
('alumno');

-- Usuarios ficticios
INSERT INTO usuarios
(nombre, apellidos, documento_identidad, email, fecha_nacimiento, password_hash, estado)
VALUES
('Laura', 'Martinez Soler', 'TEST1001A', 'laura.alumna@example.com', '2005-04-12', 'hash_prueba_1', 'activo'),
('Pablo', 'Garcia Torres', 'TEST1002B', 'pablo.alumno@example.com', '2004-09-20', 'hash_prueba_2', 'activo'),
('Marta', 'Sanchez Vidal', 'TEST1003C', 'marta.alumna@example.com', '2006-01-15', 'hash_prueba_3', 'activo'),
('Carlos', 'Perez Ferrer', 'TEST1004D', 'carlos.docente@example.com', '1985-07-03', 'hash_prueba_4', 'activo'),
('Ana', 'Lopez Costa', 'TEST1005E', 'ana.docente@example.com', '1990-11-22', 'hash_prueba_5', 'activo'),
('David', 'Navarro Ruiz', 'TEST1006F', 'david.pendiente@example.com', '2007-06-10', 'hash_prueba_6', 'pendiente');

-- Asignar roles
INSERT INTO usuario_rol (usuario_id, rol_id) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 2),
(5, 2),
(6, 3);

-- Cursos
INSERT INTO cursos
(codigo, nombre, descripcion, contenidos, duracion_horas, modalidad,
 fecha_inicio, fecha_fin, plazas_maximas, edad_minima, estado, area_id)
VALUES
('DAW101', 'Introduccion al Desarrollo Web', 'Curso inicial de desarrollo web',
 'HTML, CSS y JavaScript', 120, 'presencial',
 '2026-11-02', '2027-02-28', 2, 16, 'abierto', 1),
('SIS201', 'Administracion de Sistemas', 'Curso de sistemas informaticos',
 'Linux, redes y servidores', 100, 'online',
 '2026-11-09', '2027-03-15', 3, 18, 'abierto', 1),
('ADM101', 'Gestion Administrativa', 'Curso de administracion',
 'Documentacion y gestion', 80, 'presencial',
 '2026-11-16', '2027-02-15', 2, 16, 'abierto', 2);

-- Grupos
INSERT INTO grupos (curso_id, nombre, turno, plazas_maximas) VALUES
(1, 'Grupo A', 'Manana', 2),
(2, 'Grupo A', 'Tarde', 3),
(3, 'Grupo A', 'Manana', 2);

-- Docentes asignados
INSERT INTO docente_curso (docente_id, curso_id) VALUES
(4, 1),
(4, 2),
(5, 3);

-- Aulas
INSERT INTO aulas (nombre, capacidad, tipo) VALUES
('Aula 1', 20, 'informatica'),
('Aula 2', 25, 'teorica');

-- Sesiones
INSERT INTO sesiones (grupo_id, aula_id, fecha, hora_inicio, hora_fin) VALUES
(1, 1, '2026-11-02', '09:00:00', '11:00:00'),
(1, 1, '2026-11-03', '09:00:00', '11:00:00'),
(2, NULL, '2026-11-09', '16:00:00', '18:00:00'),
(3, 2, '2026-11-16', '09:00:00', '11:00:00');

-- Matriculas activas: el grupo 1 queda completo
INSERT INTO matriculas (alumno_id, grupo_id, estado) VALUES
(1, 1, 'activa'),
(2, 1, 'activa'),
(3, 2, 'activa');

-- Aulas
INSERT INTO aulas (nombre, capacidad, tipo) VALUES
('Aula 1', 20, 'informatica'),
('Aula 2', 25, 'teorica');

-- Sesiones
INSERT INTO sesiones (grupo_id, aula_id, fecha, hora_inicio, hora_fin) VALUES
(1, 1, '2026-11-02', '09:00:00', '11:00:00'),
(1, 1, '2026-11-03', '09:00:00', '11:00:00'),
(2, NULL, '2026-11-09', '16:00:00', '18:00:00'),
(3, 2, '2026-11-16', '09:00:00', '11:00:00');

-- Matriculas activas: el grupo 1 queda completo
INSERT INTO matriculas (alumno_id, grupo_id, estado) VALUES
(1, 1, 'activa'),
(2, 1, 'activa'),
(3, 2, 'activa');

-- Lista de espera para el grupo completo
INSERT INTO listas_espera (alumno_id, grupo_id, estado) VALUES
(6, 1, 'en_espera');

-- Asistencias de ejemplo
INSERT INTO asistencias (matricula_id, sesion_id, estado) VALUES
(1, 1, 'presente'),
(2, 1, 'ausente'),
(3, 3, 'justificado');