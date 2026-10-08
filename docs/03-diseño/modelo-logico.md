# Modelo de datos

Descripción de las tablas del sistema de gestión de cursos, matrículas y asistencia.

---

## Personas y roles

### PERSONA

```
PERSONA
├── ID → INT, PK
├── DNI_NIE → VARCHAR(20), UNIQUE, NOT NULL
├── Nombre → VARCHAR(50), NOT NULL
├── Apellidos → VARCHAR(100), NOT NULL
├── Fecha_nacimiento → DATE, NOT NULL
├── Datos_contacto → VARCHAR(255)
└── Estado → BOOLEAN, NOT NULL
```

> `Estado` sería activo/inactivo.

### ROL

```
ROL
├── ID → INT, PK
└── Nombre → VARCHAR(50), UNIQUE, NOT NULL
```

### PERSONA_ROL

```
PERSONA_ROL
├── FK_PERSONA → INT, FK
└── FK_ROL → INT, FK

PK → (FK_PERSONA, FK_ROL)
```

---

## Cursos

### CURSO

```
CURSO
├── ID → INT, PK
├── Nombre → VARCHAR(100), NOT NULL
├── Asignatura → VARCHAR(100), NOT NULL
├── Descripcion → TEXT, NOT NULL
├── Duracion → INT, NOT NULL
├── Modalidad → VARCHAR(20), NOT NULL
├── Fecha_inicio → DATE, NOT NULL
├── Fecha_fin → DATE, NOT NULL
├── Numero_plazas → INT, NOT NULL
├── Edad_minima → INT
└── Idioma → VARCHAR(50), NOT NULL
```

> Aquí `Duracion` podemos expresarla posteriormente en horas.

### CURSO_PROFESOR

```
CURSO_PROFESOR
├── FK_CURSO → INT, FK
└── FK_PERSONA → INT, FK

PK → (FK_CURSO, FK_PERSONA)
```

---

## Matrículas

### MATRICULA

```
MATRICULA
├── ID → INT, PK
├── FK_PERSONA → INT, FK
├── FK_CURSO → INT, FK
├── FK_ESTADO_MATRICULA → INT, FK
└── Fecha → DATE, NOT NULL
```

### ESTADO_MATRICULA

```
ESTADO_MATRICULA
├── ID → INT, PK
└── Nombre → VARCHAR(50), UNIQUE, NOT NULL
```

---

## Lista de espera

### LISTA_ESPERA

```
LISTA_ESPERA
├── ID → INT, PK
├── FK_PERSONA → INT, FK
├── FK_CURSO → INT, FK
├── FK_ESTADO_LISTA_ESPERA → INT, FK
└── Fecha → DATETIME, NOT NULL
```

> Aquí uso `DATETIME` porque el orden de llegada de la lista de espera necesita poder distinguir, por ejemplo, dos personas que entran el mismo día.

### ESTADO_LISTA_ESPERA

```
ESTADO_LISTA_ESPERA
├── ID → INT, PK
└── Nombre → VARCHAR(50), UNIQUE, NOT NULL
```

---

## Aulas y sesiones

### AULA

```
AULA
├── ID → INT, PK
├── Nombre → VARCHAR(50), UNIQUE, NOT NULL
└── Capacidad → INT, NOT NULL
```

### SESION

```
SESION
├── ID → INT, PK
├── FK_CURSO → INT, FK
├── Fecha → DATE, NOT NULL
├── Hora_inicio → TIME, NOT NULL
├── Hora_fin → TIME, NOT NULL
└── FK_AULA → INT, FK
```

> Uso `SESION` sin tilde como nombre de tabla porque para la BD es mejor evitar caracteres especiales.

---

## Asistencia

### ASISTENCIA

```
ASISTENCIA
├── ID → INT, PK
├── FK_PERSONA → INT, FK
├── FK_SESION → INT, FK
└── FK_ESTADO_ASISTENCIA → INT, FK
```

### ESTADO_ASISTENCIA

```
ESTADO_ASISTENCIA
├── ID → INT, PK
└── Nombre → VARCHAR(50), UNIQUE, NOT NULL
```

---

## Solicitudes de registro

### SOLICITUD_REGISTRO

```
SOLICITUD_REGISTRO
├── ID → INT, PK
├── FK_PERSONA → INT, FK
├── FK_ESTADO_SOLICITUD → INT, FK
└── Fecha → DATETIME, NOT NULL
```

### ESTADO_SOLICITUD

```
ESTADO_SOLICITUD
├── ID → INT, PK
└── Nombre → VARCHAR(50), UNIQUE, NOT NULL
```

---

## Comunicaciones

### COMUNICACION

```
COMUNICACION
├── ID → INT, PK
├── FK_PERSONA → INT, FK
├── Titulo → VARCHAR(150), NOT NULL
├── Mensaje → TEXT, NOT NULL
└── Fecha → DATETIME, NOT NULL
```
