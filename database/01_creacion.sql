USE campus_la_mar;

-- 1. Usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    apellidos VARCHAR(120) NOT NULL,
    documento_identidad VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(150) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    fecha_nacimiento DATE,
    password_hash VARCHAR(255) NOT NULL,
    estado ENUM('pendiente', 'activo', 'rechazado') NOT NULL DEFAULT 'pendiente',
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- 2. Roles
CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL UNIQUE
) ENGINE=InnoDB;

-- 3. Relacion entre usuarios y roles
CREATE TABLE usuario_rol (
    usuario_id INT NOT NULL,
    rol_id INT NOT NULL,
    PRIMARY KEY (usuario_id, rol_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
        ON DELETE CASCADE,
    FOREIGN KEY (rol_id) REFERENCES roles(id)
        ON DELETE RESTRICT
) ENGINE=InnoDB;

-- 4. Areas formativas
CREATE TABLE areas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    descripcion TEXT
) ENGINE=InnoDB;

-- 5. Cursos
CREATE TABLE cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    nombre VARCHAR(150) NOT NULL,
    descripcion TEXT,
    contenidos TEXT,
    duracion_horas INT NOT NULL,
    modalidad ENUM('presencial', 'online') NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    plazas_maximas INT NOT NULL,
    edad_minima INT NOT NULL DEFAULT 0,
    estado ENUM('borrador', 'abierto', 'completo', 'cerrado', 'finalizado')
        NOT NULL DEFAULT 'borrador',
    area_id INT NOT NULL,
    FOREIGN KEY (area_id) REFERENCES areas(id)
        ON DELETE RESTRICT,
    CHECK (duracion_horas > 0),
    CHECK (plazas_maximas > 0),
    CHECK (edad_minima >= 0),
    CHECK (fecha_fin >= fecha_inicio)
) ENGINE=InnoDB;

-- 6. Grupos y turnos de cada curso
CREATE TABLE grupos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    curso_id INT NOT NULL,
    nombre VARCHAR(80) NOT NULL,
    turno VARCHAR(50),
    plazas_maximas INT NOT NULL,
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
        ON DELETE RESTRICT,
    UNIQUE (curso_id, nombre),
    CHECK (plazas_maximas > 0)
) ENGINE=InnoDB;

-- 7. Docentes asignados a cursos
CREATE TABLE docente_curso (
    docente_id INT NOT NULL,
    curso_id INT NOT NULL,
    PRIMARY KEY (docente_id, curso_id),
    FOREIGN KEY (docente_id) REFERENCES usuarios(id)
        ON DELETE RESTRICT,
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
        ON DELETE CASCADE
) ENGINE=InnoDB;

-- 8. Aulas y espacios
CREATE TABLE aulas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL UNIQUE,
    capacidad INT NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    bloqueada BOOLEAN NOT NULL DEFAULT FALSE,
    CHECK (capacidad > 0)
) ENGINE=InnoDB;

-- 9. Sesiones y horarios
CREATE TABLE sesiones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    grupo_id INT NOT NULL,
    aula_id INT,
    fecha DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    FOREIGN KEY (grupo_id) REFERENCES grupos(id)
        ON DELETE CASCADE,
    FOREIGN KEY (aula_id) REFERENCES aulas(id)
        ON DELETE RESTRICT,
    CHECK (hora_fin > hora_inicio)
) ENGINE=InnoDB;

-- 10. Matriculas
CREATE TABLE matriculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    alumno_id INT NOT NULL,
    grupo_id INT NOT NULL,
    fecha_matricula TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    estado ENUM('activa', 'cancelada', 'finalizada')
        NOT NULL DEFAULT 'activa',
    FOREIGN KEY (alumno_id) REFERENCES usuarios(id)
        ON DELETE RESTRICT,
    FOREIGN KEY (grupo_id) REFERENCES grupos(id)
        ON DELETE RESTRICT,
    UNIQUE (alumno_id, grupo_id)
) ENGINE=InnoDB;

-- 11. Lista de espera
CREATE TABLE listas_espera (
    id INT AUTO_INCREMENT PRIMARY KEY,
    alumno_id INT NOT NULL,
    grupo_id INT NOT NULL,
    fecha_solicitud TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    estado ENUM('en_espera', 'admitido', 'retirado')
        NOT NULL DEFAULT 'en_espera',
    FOREIGN KEY (alumno_id) REFERENCES usuarios(id)
        ON DELETE RESTRICT,
    FOREIGN KEY (grupo_id) REFERENCES grupos(id)
        ON DELETE RESTRICT,
    UNIQUE (alumno_id, grupo_id)
) ENGINE=InnoDB;

-- 12. Control de asistencia
CREATE TABLE asistencias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    matricula_id INT NOT NULL,
    sesion_id INT NOT NULL,
    estado ENUM('presente', 'ausente', 'justificado')
        NOT NULL,
    observaciones VARCHAR(255),
    FOREIGN KEY (matricula_id) REFERENCES matriculas(id)
        ON DELETE CASCADE,
    FOREIGN KEY (sesion_id) REFERENCES sesiones(id)
        ON DELETE CASCADE,
    UNIQUE (matricula_id, sesion_id)
) ENGINE=InnoDB;
