# Requisitos del proyecto Campus La Mar

## 1. Requisitos funcionales

### RF01 — Consultar la oferta formativa

El sistema permitirá consultar los cursos disponibles sin necesidad de iniciar sesión.

### RF02 — Gestionar cursos

Secretaría/Administrador podrá crear, modificar y gestionar los cursos, incluyendo su información principal, modalidad, fechas, horarios, plazas y edad mínima.

### RF03 — Gestionar usuarios

Secretaría/Administrador podrá gestionar las cuentas de los usuarios y sus datos necesarios para el funcionamiento del sistema.

### RF04 — Gestionar roles

El sistema permitirá asignar uno o varios roles a una misma persona.

### RF05 — Gestionar solicitudes de registro

Una persona podrá solicitar la creación de una cuenta y Secretaría podrá aprobar o rechazar la solicitud.

### RF06 — Gestionar matrículas

Los alumnos podrán solicitar su matrícula en los cursos y Secretaría podrá gestionar las matrículas.

### RF07 — Gestionar plazas y listas de espera

El sistema controlará las plazas disponibles de los cursos y permitirá gestionar una lista de espera cuando no queden plazas.

### RF08 — Gestionar horarios y aulas

Secretaría podrá establecer los horarios y asignar aulas a las actividades formativas, comprobando que no existan conflictos.

### RF09 — Gestionar asistencia

El profesorado podrá registrar la asistencia de los alumnos en las actividades presenciales.

### RF10 — Consultar información personal y académica

Cada usuario podrá consultar la información que le corresponda según su rol, como matrículas, horarios o asistencia.

### RF11 — Gestionar comunicaciones

El sistema permitirá informar a los usuarios de acontecimientos relacionados con sus cursos, como cambios de horario, aceptación de matrícula o cancelaciones.

### RF12 — Consultar información académica

Secretaría y profesorado podrán consultar información relacionada con los cursos y alumnos según los permisos de su rol.


## 2. Requisitos no funcionales

### RNF01 — Seguridad

El sistema deberá comprobar en el servidor que cada usuario dispone de permisos para realizar las operaciones correspondientes a su rol.

### RNF02 — Protección de contraseñas

Las contraseñas deberán almacenarse mediante un sistema de hash seguro y nunca en texto plano.

### RNF03 — Privacidad

Los usuarios solo podrán acceder a los datos personales y académicos que les correspondan según sus permisos.

### RNF04 — Usabilidad

El sistema deberá mostrar mensajes claros cuando se produzcan errores o cuando una operación no pueda realizarse.

### RNF05 — Accesibilidad

La aplicación deberá tener en cuenta criterios básicos de accesibilidad web para facilitar su uso.

### RNF06 — Diseño adaptable

La aplicación deberá funcionar correctamente en ordenadores, tablets y dispositivos móviles.

### RNF07 — Integridad de los datos

La base de datos deberá mantener la integridad y consistencia de la información almacenada.

### RNF08 — Mantenibilidad

El sistema deberá estar organizado de forma que sea posible añadir o modificar funcionalidades sin tener que rediseñar completamente la aplicación.


## 3. Reglas de negocio

### RN01

Una persona tendrá una única cuenta en el sistema y podrá tener uno o varios roles.

### RN02

El DNI/NIE será obligatorio para identificar a las personas y no podrá estar duplicado.

### RN03

La fecha de nacimiento completa se almacenará para cada persona.

### RN04

Un alumno podrá estar matriculado en varios cursos.

### RN05

Para matricularse en un curso, el alumno deberá cumplir las condiciones establecidas para ese curso, incluida la edad mínima cuando corresponda.

### RN06

Los cursos tendrán un número limitado de plazas.

### RN07

Cuando un curso no tenga plazas disponibles, los interesados podrán entrar en una lista de espera siguiendo el orden de llegada.

### RN08

Cuando se libere una plaza, se asignará siguiendo el orden de la lista de espera.

### RN09

Un alumno no podrá tener actividades presenciales que se solapen en el tiempo.

### RN10

Una misma aula no podrá estar ocupada por dos actividades presenciales al mismo tiempo.

### RN11

Un profesor no podrá tener dos actividades presenciales coincidentes.

### RN12

Las aulas tendrán una capacidad máxima que deberá respetarse al asignar un grupo.

### RN13

Los perfiles de alumno y profesor no se eliminarán definitivamente, sino que podrán desactivarse.

### RN14

Las solicitudes de registro deberán ser revisadas por Secretaría antes de que el usuario pueda utilizar las funciones correspondientes a su cuenta.

### RN15

Las personas menores de edad deberán disponer de un representante legal.