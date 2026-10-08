# Historias de usuario

## 1. Introducción

Las historias de usuario describen las principales funcionalidades del sistema desde el punto de vista de las personas que utilizarán la aplicación.

Cada historia indica quién necesita realizar una acción, qué quiere hacer y para qué la necesita.

---

## 2. Persona sin iniciar sesión

### HU01 - Consultar oferta formativa

**Como** persona interesada en la formación,  
**quiero** consultar los cursos disponibles sin iniciar sesión,  
**para** conocer la oferta formativa del centro.

**Criterios de aceptación:**
- La oferta formativa debe poder consultarse sin crear una cuenta.
- Se debe mostrar la información principal de los cursos.

---

## 3. Alumno

### HU02 - Consultar cursos

**Como** alumno,  
**quiero** consultar los cursos disponibles,  
**para** conocer las opciones de formación.

**Criterios de aceptación:**
- Se deben mostrar los cursos disponibles.
- Se debe poder consultar la información principal de cada curso.

### HU03 - Solicitar matrícula

**Como** alumno,  
**quiero** solicitar la matrícula en un curso,  
**para** poder participar en él.

**Criterios de aceptación:**
- El alumno debe poder solicitar la matrícula.
- La solicitud debe quedar registrada.
- Secretaría debe poder revisar la solicitud.

### HU04 - Consultar mis matrículas

**Como** alumno,  
**quiero** consultar mis matrículas,  
**para** conocer los cursos en los que estoy matriculado y su estado.

**Criterios de aceptación:**
- El alumno puede tener varias matrículas.
- Se debe mostrar el estado de cada matrícula.

### HU05 - Consultar horarios

**Como** alumno,  
**quiero** consultar mis horarios,  
**para** saber cuándo y dónde tengo las sesiones presenciales.

**Criterios de aceptación:**
- Se deben mostrar las fechas y horas de las sesiones.
- En las sesiones presenciales se debe mostrar el aula correspondiente.

### HU06 - Consultar asistencia

**Como** alumno,  
**quiero** consultar mi información de asistencia,  
**para** conocer mi situación en los cursos.

**Criterios de aceptación:**
- Se deben poder consultar las asistencias registradas.
- Se debe mostrar el estado de cada asistencia.

### HU07 - Consultar comunicaciones

**Como** alumno,  
**quiero** consultar las comunicaciones recibidas,  
**para** estar informado sobre cambios, matrículas, recordatorios y otras novedades.

**Criterios de aceptación:**
- El usuario debe poder consultar sus comunicaciones.
- Se debe mostrar el título, mensaje y fecha.

---

## 4. Profesor

### HU08 - Consultar cursos impartidos

**Como** profesor,  
**quiero** consultar los cursos que imparto,  
**para** conocer las formaciones que tengo asignadas.

**Criterios de aceptación:**
- Un profesor puede impartir varios cursos.
- Se deben mostrar los cursos correspondientes al profesor.

### HU09 - Consultar sesiones

**Como** profesor,  
**quiero** consultar las sesiones de mis cursos,  
**para** conocer cuándo debo impartirlas y dónde se realizan.

**Criterios de aceptación:**
- Se deben mostrar las fechas y horarios.
- En las sesiones presenciales se debe mostrar el aula.

### HU10 - Registrar asistencia

**Como** profesor,  
**quiero** registrar la asistencia de los alumnos,  
**para** mantener actualizada su información de asistencia.

**Criterios de aceptación:**
- El profesor puede registrar la asistencia de los alumnos de una sesión.
- La asistencia debe quedar asociada al alumno y a la sesión.
- Se debe poder indicar el estado de asistencia.

### HU11 - Introducir calificaciones

**Como** profesor,  
**quiero** introducir las calificaciones de los alumnos,  
**para** mantener actualizada su información académica.

**Criterios de aceptación:**
- El profesor puede introducir las calificaciones correspondientes.
- Las calificaciones quedan asociadas al alumno.

---

## 5. Secretaría / Administrador

### HU12 - Gestionar cursos

**Como** Secretaría/Administrador,  
**quiero** crear y modificar cursos,  
**para** mantener actualizada la oferta formativa.

**Criterios de aceptación:**
- Se puede introducir la información del curso.
- Se pueden modificar sus datos.
- Se pueden definir sus fechas, modalidad, plazas y edad mínima.

### HU13 - Gestionar usuarios

**Como** Secretaría/Administrador,  
**quiero** gestionar los usuarios,  
**para** mantener actualizada la información de las personas registradas.

**Criterios de aceptación:**
- Se pueden gestionar los datos necesarios de los usuarios.
- Los perfiles de alumnos y profesores pueden desactivarse sin eliminarse definitivamente.

### HU14 - Gestionar roles

**Como** Secretaría/Administrador,  
**quiero** asignar roles a las personas,  
**para** determinar qué funciones puede realizar cada usuario.

**Criterios de aceptación:**
- Una persona puede tener uno o varios roles.
- Los roles disponibles deben estar definidos por el sistema.

### HU15 - Revisar solicitudes de registro

**Como** Secretaría/Administrador,  
**quiero** revisar las solicitudes de registro,  
**para** aceptar o rechazar el acceso de las personas al sistema.

**Criterios de aceptación:**
- Se pueden consultar las solicitudes pendientes.
- Una solicitud puede ser aceptada o rechazada.
- El estado de la solicitud queda registrado.

### HU16 - Gestionar matrículas

**Como** Secretaría/Administrador,  
**quiero** gestionar las matrículas de los alumnos,  
**para** controlar quién participa en cada curso.

**Criterios de aceptación:**
- Se pueden consultar las matrículas.
- Se puede consultar su estado.
- Se deben respetar las condiciones del curso.

### HU17 - Gestionar lista de espera

**Como** Secretaría/Administrador,  
**quiero** gestionar las listas de espera,  
**para** controlar las solicitudes cuando un curso está completo.

**Criterios de aceptación:**
- Las personas deben mantenerse en orden de llegada.
- Cuando queda una plaza libre, se debe tener en cuenta a la primera persona de la lista.
- El estado de la persona en la lista debe quedar registrado.

### HU18 - Gestionar horarios y aulas

**Como** Secretaría/Administrador,  
**quiero** establecer los horarios y asignar aulas,  
**para** organizar las sesiones de los cursos sin conflictos.

**Criterios de aceptación:**
- Los horarios se introducen manualmente.
- El sistema debe detectar conflictos de horarios.
- No se debe permitir utilizar la misma aula para dos sesiones simultáneas.
- Se debe respetar la capacidad del aula.

### HU19 - Consultar información académica

**Como** Secretaría/Administrador,  
**quiero** consultar información académica de los alumnos y cursos,  
**para** poder gestionar correctamente la actividad formativa.

**Criterios de aceptación:**
- Se debe poder consultar la información correspondiente a las funciones de Secretaría/Administrador.
- Se deben respetar los permisos de acceso.

### HU20 - Gestionar comunicaciones

**Como** Secretaría/Administrador,  
**quiero** enviar comunicaciones a los usuarios,  
**para** informar sobre matrículas, cambios, cancelaciones, recordatorios y novedades.

**Criterios de aceptación:**
- Se pueden crear comunicaciones.
- Las comunicaciones quedan asociadas a los usuarios correspondientes.
- Se muestra el título, mensaje y fecha.

---

## 6. Resumen

Las historias de usuario cubren las principales acciones de los tres perfiles principales del sistema:

- Persona sin iniciar sesión.
- Alumno.
- Profesor.
- Secretaría/Administrador.

Estas historias sirven como complemento de los requisitos funcionales y reglas de negocio definidos en `requisitos.md`.