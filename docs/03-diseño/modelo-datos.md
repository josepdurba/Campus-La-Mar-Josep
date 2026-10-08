# Modelo de datos

## 1. Relaciones entre entidades

### Persona y roles

Una persona puede tener uno o varios roles, y un mismo rol puede pertenecer a varias personas. La relación se realiza mediante `PERSONA_ROL`.

```text
PERSONA 1 ─── N PERSONA_ROL N ─── 1 ROL
```

### Persona y cursos mediante matrícula

Una persona puede matricularse en varios cursos y un curso puede tener varios alumnos. La relación se realiza mediante `MATRÍCULA`.

```text
PERSONA 1 ─── N MATRÍCULA N ─── 1 CURSO
```

### Persona y cursos mediante lista de espera

Una persona puede estar en la lista de espera de varios cursos y un curso puede tener varias personas en espera.

```text
PERSONA 1 ─── N LISTA_ESPERA N ─── 1 CURSO
```

### Persona y cursos mediante profesores

Un curso puede tener varios profesores y un profesor puede impartir varios cursos. La relación se realiza mediante `CURSO_PROFESOR`.

```text
PERSONA 1 ─── N CURSO_PROFESOR N ─── 1 CURSO
```

### Curso y sesiones

Un curso puede tener varias sesiones y cada sesión pertenece a un único curso.

```text
CURSO 1 ─── N SESIÓN
```

### Sesiones y aulas

Un aula puede utilizarse en diferentes sesiones, mientras que cada sesión presencial se asigna a un aula.

```text
AULA 1 ─── N SESIÓN
```

### Persona, sesiones y asistencia

Una persona puede tener muchos registros de asistencia y una sesión puede tener registros de asistencia de varias personas.

```text
PERSONA 1 ─── N ASISTENCIA
SESIÓN  1 ─── N ASISTENCIA
```

Cada registro de asistencia relaciona una persona con una sesión y un estado de asistencia.

### Estados

Los estados se almacenan en tablas independientes para evitar valores repetidos o escritos de forma diferente.

```text
ESTADO_MATRICULA 1 ─── N MATRÍCULA

ESTADO_LISTA_ESPERA 1 ─── N LISTA_ESPERA

ESTADO_ASISTENCIA 1 ─── N ASISTENCIA

ESTADO_SOLICITUD 1 ─── N SOLICITUD_REGISTRO
```

### Solicitudes de registro

Una persona puede realizar solicitudes de registro y cada solicitud pertenece a una persona.

```text
PERSONA 1 ─── N SOLICITUD_REGISTRO
```

### Comunicaciones

Una persona puede recibir varias comunicaciones. Cada comunicación está dirigida a una persona concreta.

```text
PERSONA 1 ─── N COMUNICACION
```

---

## 2. Entidades y atributos

### CURSO

```text
CURSO
├── ID
├── Nombre
├── Asignatura
├── Descripción
├── Duración
├── Modalidad
├── Fecha de inicio
├── Fecha de fin
├── Número de plazas
├── Edad mínima
└── Idioma
```

La modalidad permite diferenciar entre cursos presenciales y online.

### PERSONA

```text
PERSONA
├── ID
├── DNI/NIE
├── Nombre
├── Apellidos
├── Fecha de nacimiento
├── Datos de contacto
└── Estado
```

Una persona dispone de una única cuenta y puede tener uno o varios roles.

### ROL

```text
ROL
├── ID
└── Nombre
```

Ejemplos de roles son alumno, profesor y Secretaría/Administrador.

### PERSONA_ROL

```text
PERSONA_ROL
├── FK_PERSONA
└── FK_ROL
```

Tabla intermedia que permite relacionar personas con uno o varios roles.

### MATRÍCULA

```text
MATRÍCULA
├── ID
├── FK_PERSONA
├── FK_CURSO
├── FK_ESTADO_MATRICULA
└── Fecha
```

Representa la matrícula de una persona en un curso.

### ESTADO_MATRICULA

```text
ESTADO_MATRICULA
├── ID
└── Nombre
```

Contiene los diferentes estados que puede tener una matrícula.

### LISTA_ESPERA

```text
LISTA_ESPERA
├── ID
├── FK_PERSONA
├── FK_CURSO
├── FK_ESTADO_LISTA_ESPERA
└── Fecha
```

Permite registrar las personas que esperan una plaza en un curso.

La posición de la persona en la lista no se almacena como un campo independiente, ya que puede obtenerse mediante el orden de llegada.

### ESTADO_LISTA_ESPERA

```text
ESTADO_LISTA_ESPERA
├── ID
└── Nombre
```

Estados definidos inicialmente:

```text
En espera
Matriculado
Cancelado
```

### AULA

```text
AULA
├── ID
├── Nombre
└── Capacidad
```

Representa las aulas físicas disponibles en el centro.

### SESIÓN

```text
SESIÓN
├── ID
├── FK_CURSO
├── Fecha
├── Hora de inicio
├── Hora de fin
└── FK_AULA
```

Representa una sesión o clase programada de un curso.

### CURSO_PROFESOR

```text
CURSO_PROFESOR
├── FK_CURSO
└── FK_PERSONA
```

Relaciona los cursos con los profesores que los imparten.

### ASISTENCIA

```text
ASISTENCIA
├── ID
├── FK_PERSONA
├── FK_SESIÓN
└── FK_ESTADO_ASISTENCIA
```

Permite registrar la asistencia de cada persona en cada sesión.

### ESTADO_ASISTENCIA

```text
ESTADO_ASISTENCIA
├── ID
└── Nombre
```

Estados definidos inicialmente:

```text
Presente
Retraso
Falta
```

### SOLICITUD_REGISTRO

```text
SOLICITUD_REGISTRO
├── ID
├── FK_PERSONA
├── FK_ESTADO_SOLICITUD
└── Fecha
```

Representa una solicitud de registro realizada por una persona.

### ESTADO_SOLICITUD

```text
ESTADO_SOLICITUD
├── ID
└── Nombre
```

Estados definidos inicialmente:

```text
En espera
Aceptada
Rechazada
```

### COMUNICACION

```text
COMUNICACION
├── ID
├── FK_PERSONA
├── Título
├── Mensaje
└── Fecha
```

Almacena las comunicaciones o notificaciones dirigidas a los usuarios.

---

## 3. Resumen general

El modelo queda formado por las siguientes entidades:

```text
PERSONA
ROL
PERSONA_ROL

CURSO
CURSO_PROFESOR

MATRÍCULA
ESTADO_MATRICULA

LISTA_ESPERA
ESTADO_LISTA_ESPERA

AULA
SESIÓN

ASISTENCIA
ESTADO_ASISTENCIA

SOLICITUD_REGISTRO
ESTADO_SOLICITUD

COMUNICACION
```

Las relaciones principales permiten gestionar personas y roles, cursos, profesores, matrículas, listas de espera, sesiones, aulas, asistencia, solicitudes de registro y comunicaciones.

Este modelo servirá como base para desarrollar posteriormente el modelo lógico y físico de la base de datos.