# Planificación del proyecto — Campus La Mar

> **Versión inicial:** 26-11-2026  
> **Dedicación disponible:** 3 horas por semana.  
> **Horizonte:** desde finales de noviembre de 2026 hasta junio de 2027 (fin de curso provisional).  
> **Capacidad estimada:** 28 sesiones de trabajo × 3 horas = **84 horas**. Se deja margen para semanas sin sesión, vacaciones y cambios de alcance.  
> **Estado:** planificación propuesta; las tareas no se consideran completadas hasta que se implementen y se verifiquen.

## 1. Objetivo

Llegar al final de curso con una versión funcional, coherente y demostrable de Campus La Mar, priorizando primero los requisitos imprescindibles y dejando tiempo suficiente para integración, pruebas, correcciones y documentación.

La planificación es una propuesta inicial basada en el estado conocido del repositorio y las tareas detectadas. Antes de comprometer funcionalidades concretas de backend, base de datos o gestión, se revisarán los requisitos y el código existente para evitar duplicar trabajo.

## 2. Cómo aprovechar las 3 horas semanales

Distribución orientativa de cada sesión:

- **2 horas:** implementación de la tarea prioritaria de la semana.
- **30 minutos:** pruebas y revisión de lo realizado.
- **30 minutos:** documentación, actualización de `contexto.md` y registro de pendientes.

En semanas de análisis, pruebas o documentación se puede cambiar esta distribución, manteniendo las 3 horas totales.

## 3. Plan de trabajo por semanas

Las semanas se cuentan como sesiones de trabajo, no como semanas naturales obligatorias. Si hay vacaciones, exámenes o semanas sin disponibilidad, se desplaza el calendario sin saltarse las fases.

| Semana | Fase | Trabajo previsto | Entregable o criterio de cierre |
|---:|---|---|---|
| 1 | Organización | Revisar el estado real del repositorio, README, issues y documentación existente. Acordar qué entra en la primera versión. | Lista priorizada de requisitos y tareas. |
| 2 | Análisis | Definir perfiles de usuario, necesidades y flujos principales del sistema. | Casos de uso o descripción de flujos revisados. |
| 3 | Requisitos | Clasificar requisitos funcionales y no funcionales. Separar imprescindibles de mejoras. | Documento de requisitos actualizado. |
| 4 | Diseño | Revisar arquitectura, estructura de carpetas y responsabilidades frontend/backend. | Diseño técnico inicial coherente con el código. |
| 5 | Datos | Revisar entidades y relaciones necesarias según requisitos confirmados. | Modelo entidad-relación o esquema equivalente. |
| 6 | Datos | Definir tablas, claves, restricciones y datos de prueba. | Esquema de base de datos documentado. |
| 7 | Entorno | Comprobar o preparar el entorno local y Docker si corresponde al proyecto. | Instrucciones reproducibles para arrancar el proyecto. |
| 8 | Backend | Revisar la estructura existente y preparar la conexión a la base de datos y configuración. | Backend con estructura y configuración verificadas. |
| 9 | Backend | Implementar el primer flujo de acceso a datos y manejo de errores. | Primera operación de lectura/escritura probada. |
| 10 | Usuarios | Definir e implementar el modelo y operaciones esenciales de usuario. | Gestión básica de usuarios implementada según requisitos. |
| 11 | Autenticación | Implementar registro o alta, inicio de sesión y almacenamiento seguro de contraseñas, según el alcance aprobado. | Flujo de autenticación probado; no basta con la validación del formulario. |
| 12 | Autenticación | Añadir sesiones, cierre de sesión y control de acceso a páginas protegidas. | Acceso y permisos básicos verificados. |
| 13 | Dominio | Revisar requisitos de alumnos, tutores legales y solicitudes de registro. | Reglas de negocio confirmadas y documentadas. |
| 14 | Dominio | Implementar el flujo prioritario de alumnos/tutores o solicitudes, según prioridad acordada. | Primer flujo de gestión completo. |
| 15 | Dominio | Completar operaciones necesarias y validaciones del flujo elegido. | Flujo probado con casos válidos e inválidos. |
| 16 | Gestión académica | Revisar requisitos de aulas, capacidad y disponibilidad de profesores. | Reglas y restricciones documentadas. |
| 17 | Gestión académica | Implementar la parte prioritaria de aulas o disponibilidad, si forma parte del alcance mínimo. | Operación de gestión implementada y probada. |
| 18 | Integración | Conectar formularios y vistas frontend con los servicios/backend existentes. | Primer flujo completo de interfaz a base de datos. |
| 19 | Frontend | Corregir navegación, enlaces, contenido redundante y estructura de páginas. | Navegación principal coherente. |
| 20 | Frontend | Mejorar formularios, mensajes de error, validación y estados de interacción. | Formularios utilizables y con validaciones adecuadas. |
| 21 | Frontend | Revisar responsive, accesibilidad básica e imágenes. | Interfaz revisada en tamaños de pantalla relevantes. |
| 22 | Integración | Probar los flujos principales de extremo a extremo y corregir incompatibilidades. | Lista de pruebas de integración con resultados. |
| 23 | Calidad | Ejecutar pruebas de validación, permisos, errores y datos límite. | Registro de pruebas y defectos encontrados. |
| 24 | Calidad | Corregir defectos prioritarios y repetir las pruebas afectadas. | Defectos críticos resueltos o documentados. |
| 25 | Seguridad | Revisar validación en servidor, contraseñas, sesiones, permisos y exposición de datos. | Lista de comprobación de seguridad completada. |
| 26 | Estabilización | Congelar nuevas funcionalidades salvo bloqueos; resolver problemas restantes. | Versión candidata estable. |
| 27 | Documentación | Actualizar instalación, configuración, arquitectura, base de datos, uso y pruebas. | Documentación alineada con la versión real. |
| 28 | Entrega | Preparar datos de demostración, recorrido de presentación y revisión final del repositorio. | Proyecto listo para demostración y entrega, con pendientes identificados. |

## 4. Hitos de control

- **Hito 1 — Análisis cerrado (semana 4):** sabemos qué vamos a construir y qué queda fuera.
- **Hito 2 — Diseño de datos y entorno (semana 8):** modelo y entorno preparados.
- **Hito 3 — Base funcional (semana 12):** backend y acceso de usuarios funcionando en el alcance acordado.
- **Hito 4 — Flujos principales (semana 18):** funcionalidades de gestión prioritarias integradas.
- **Hito 5 — Aplicación integrada (semana 22):** frontend y backend conectados en los recorridos principales.
- **Hito 6 — Versión estable (semana 26):** pruebas prioritarias ejecutadas y defectos críticos tratados.
- **Hito 7 — Entrega (semana 28):** documentación y demostración preparadas.

## 5. Priorización si no hay tiempo suficiente

Si las 84 horas no bastan, aplicar este orden:

1. **Imprescindible:** que el proyecto arranque de forma reproducible y que los flujos principales acordados funcionen.
2. **Imprescindible:** persistencia correcta de datos, validaciones en servidor y control de acceso cuando haya cuentas.
3. **Imprescindible:** pruebas de los flujos principales y documentación de instalación/uso.
4. **Importante:** mejorar responsive, accesibilidad, mensajes y experiencia de usuario.
5. **Opcional:** funcionalidades secundarias, animaciones, mejoras visuales no esenciales y automatizaciones adicionales.

No se deben recortar las pruebas ni la documentación para añadir funcionalidades de última hora.

## 6. Seguimiento semanal

Al terminar cada sesión:

- Marcar las tareas como **pendiente**, **en curso**, **implementada**, **probada** o **bloqueada**.
- Registrar en `contexto.md` qué se ha hablado, decidido, revisado y modificado.
- Anotar las pruebas con pasos y resultado; no marcar como probado lo que solo se ha leído o revisado estáticamente.
- Actualizar este documento si cambian prioridades, alcance o disponibilidad.
- Elegir una tarea concreta para la siguiente sesión de 3 horas.

### Registro de sesiones

| Sesión | Fecha | Tiempo empleado | Trabajo realizado | Estado / resultado |
|---:|---|---:|---|---|
| 1 | Pendiente | 3 h | Revisar alcance y priorizar requisitos | Pendiente |
| 2 | Pendiente | 3 h | Análisis de usuarios y flujos | Pendiente |
| 3 | Pendiente | 3 h | Requisitos funcionales y no funcionales | Pendiente |

Añadir nuevas filas conforme se realicen las sesiones.

## 7. Riesgos y supuestos

- La fecha exacta de entrega de fin de curso todavía debe confirmarse; junio de 2027 se utiliza como referencia provisional.
- Las 3 horas semanales pueden verse reducidas por vacaciones, exámenes u otras entregas. Por eso se planifican 28 sesiones y no se asignan fechas rígidas a cada una.
- El alcance real de backend y base de datos debe verificarse en el repositorio antes de dar por pendientes o terminadas funcionalidades.
- Si aparecen requisitos nuevos, se priorizarán frente a tareas opcionales y se revisará el calendario.
- La planificación no garantiza que todas las funcionalidades imaginables entren en el tiempo disponible; el objetivo es completar primero una versión mínima funcional y bien probada.
