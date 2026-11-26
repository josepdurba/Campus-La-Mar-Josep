# CONTEXTO DEL PROYECTO — CAMPUS LA MAR

## REGLAS P0 — PRIORIDAD MÁXIMA

Estas reglas tienen prioridad sobre cualquier otra instrucción de trabajo relacionada con este proyecto.

1. **Contexto siempre actualizado:** cada vez que se trabaje o se hable de Campus La Mar en este chat, actualizar este archivo en GitHub con el contexto relevante de la conversación: decisiones, requisitos, cambios, tareas, dudas pendientes, incidencias y estado actual.
2. **No perder el historial útil:** mantener un registro cronológico de lo hablado y realizado. Resumirlo de forma clara y conservar las decisiones anteriores que sigan vigentes; no copiar conversaciones literalmente ni incluir información personal irrelevante.
3. **Sincronización con el repositorio:** antes de proponer cambios, revisar los archivos y el estado actual del repositorio que sean relevantes. Después de realizar cambios, actualizar este contexto y la documentación afectada.
4. **Pruebas verificables:** cuando una funcionalidad se pruebe, registrar qué se ha probado, cómo, el resultado, la fecha y cualquier limitación. Diferenciar siempre entre *implementado*, *revisado estáticamente*, *probado* y *pendiente*. Nunca marcar como probado algo que no se haya ejecutado.
5. **Documentación viva:** crear o actualizar la documentación del proyecto cuando se añadan funcionalidades, se cambien requisitos, arquitectura, datos, instalación, uso, pruebas o decisiones técnicas. Mantener la documentación coherente con el código real.
6. **Cambios en el proyecto:** cuando el trabajo acordado implique modificar el código o la estructura del proyecto, realizar los cambios solicitados y documentarlos. Si el usuario solo pide una explicación, análisis o propuesta, no modificar código por iniciativa propia.
7. **Trazabilidad en GitHub:** los cambios autorizados deben guardarse en el repositorio y acompañarse de mensajes de commit descriptivos. No afirmar que un cambio está subido si la operación de GitHub no ha confirmado su éxito.
8. **Transparencia:** indicar qué archivos se han consultado o modificado, qué pruebas se han ejecutado y qué queda pendiente. Si no se puede acceder a una parte del proyecto o ejecutar una prueba, dejarlo expresamente indicado.
9. **Prioridad de la información real:** el contenido del repositorio y las pruebas realizadas prevalecen sobre suposiciones o documentación desactualizada. Ante contradicciones, señalar la discrepancia y actualizar la documentación cuando se haya confirmado el estado correcto.

---

## 1. Identificación del proyecto

- **Nombre:** Campus La Mar.
- **Repositorio:** https://github.com/josepdurba/Campus-La-Mar-Josep
- **Rama de referencia:** `main`.
- **Tipo:** proyecto académico de Desarrollo de Aplicaciones Web (DAW).
- **Objetivo general:** plataforma académica para gestionar y presentar información y procesos relacionados con el centro.

## 2. Estado conocido del repositorio

Según la revisión realizada el 26-11-2026:

- El repositorio es público y la rama revisada es `main`.
- El README presenta Campus La Mar y describe una plataforma web académica.
- La parte visible revisada está desarrollada principalmente con PHP, HTML, CSS y JavaScript.
- El backend y varias funcionalidades de gestión aparecen como trabajo en desarrollo.
- El proyecto contempla Docker y documentación organizada en áreas como análisis, requisitos, diseño, planificación, testing y memoria final.

### Estructura del frontend revisada

```text
frontend/
├── components/
│   ├── footer.php
│   └── header.php
├── css/
│   └── styles.css
├── img/
│   └── logo.png
├── index.php
├── js/
│   └── script.js
└── login.php
```

## 3. Revisión inicial del frontend

Se realizó una lectura estática de los archivos de texto del frontend. No se ejecutó la aplicación en un navegador ni se realizó una prueba funcional completa.

### `frontend/index.php`

- Página principal con inclusión de cabecera y pie reutilizables.
- Incluye secciones de cursos, información sobre el centro y formación.
- Se observó contenido/sección con título «FORMACIÓN Y APRENDIZAJE» que parece repetido o redundante.
- Carga `css/styles.css` y `js/script.js`.
- El CSS contiene una clase `.hero` que no se observó utilizada en esta página.

### `frontend/login.php`

- Formulario con identificador `loginForm`, campos de email y contraseña y un contenedor para mensajes.
- Tiene `novalidate`.
- No se observó `action` ni `method` explícitos ni procesamiento PHP de credenciales.
- La página no implementa autenticación real en el estado revisado.

### `frontend/components/header.php`

- Cabecera compartida con enlaces a Inicio, Cursos, Sobre nosotros y Acceder.
- Los enlaces de Cursos y Sobre nosotros usan anclas `#cursos` y `#nosotros`.
- **Incidencia detectada:** al pulsar esas anclas desde `login.php`, el navegador busca los identificadores en la propia página de login y no en la página principal. Conviene enlazar a `index.php#cursos` y `index.php#nosotros`.

### `frontend/components/footer.php`

- Pie compartido con texto de marca, lema y copyright 2026.

### `frontend/css/styles.css`

- Contiene variables CSS, estilos base, cabecera, navegación, botones, cursos, login y pie.
- Incluye media query para anchuras de hasta 768 px.
- La cuadrícula de cursos pasa a una columna en móvil.
- Mejoras propuestas: estados de foco visibles, revisión de contraste, presentación accesible de errores y comprobación responsive en navegador.

### `frontend/js/script.js`

- Añade un listener de envío si existe `loginForm`.
- Evita el envío normal y comprueba que los campos no estén vacíos.
- Comprueba una longitud mínima de seis caracteres para la contraseña.
- Muestra el mensaje: «Validación correcta. La autenticación no está disponible.»
- No realiza llamadas a backend/API, no crea sesión y no autentica usuarios.
- No se observó validación explícita del formato del correo en JavaScript. Como el formulario usa `novalidate`, no debe darse por hecho que la validación nativa del navegador se esté aplicando.

### `frontend/img/logo.png`

- El fichero revisado ocupa aproximadamente 1,43 MB.
- Se recomienda optimizarlo y valorar formatos como WebP o SVG si el recurso original lo permite.

## 4. Incidencias y mejoras identificadas

1. Corregir los enlaces de ancla de la cabecera para que funcionen desde todas las páginas.
2. Implementar autenticación real cuando exista o se defina el backend correspondiente.
3. Definir validación de email y contraseña tanto en cliente como en servidor; la validación del cliente no sustituye la del servidor.
4. Revisar y eliminar contenido redundante de la página principal.
5. Comprobar y completar el diseño responsive en dispositivos y tamaños reales.
6. Mejorar accesibilidad: foco de teclado, etiquetas, mensajes de error, contraste y navegación.
7. Optimizar el peso del logo.
8. Añadir pruebas funcionales y documentar sus resultados.

Estas son observaciones y propuestas de la revisión inicial, no cambios ya realizados.

## 5. Funcionalidades y trabajo de backend pendientes de verificar

En las issues del repositorio se identificaron tareas relacionadas con:

- Base de datos y modelos de datos.
- Gestión de usuarios.
- Tutores legales.
- Solicitudes de registro.
- Capacidad de aulas.
- Disponibilidad de profesores.

La existencia de estas tareas no demuestra que las funcionalidades estén implementadas. Su estado debe comprobarse en el código, issues y pruebas antes de actualizarlo.

## 6. Estado de pruebas

| Área | Estado conocido | Observaciones |
|---|---|---|
| Lectura de archivos frontend | Revisado estáticamente | Se leyeron los archivos de texto indicados. |
| Página principal en navegador | Pendiente | No se realizó prueba visual o funcional. |
| Formulario de login | Revisado estáticamente | No se probó en navegador ni contra un backend. |
| Autenticación real | No implementada en lo revisado | El JS informa de que la autenticación no está disponible. |
| Responsive | Pendiente de prueba | Solo se revisaron las reglas CSS. |
| Backend y base de datos | Pendiente de verificación | No se debe asumir su estado a partir de las issues. |

## 7. Registro de actividad y decisiones

### 2026-11-26 — Revisión inicial y creación del contexto

- Se revisó el README y la estructura general conocida del repositorio.
- Se inspeccionó el contenido de los archivos de texto del frontend enumerados anteriormente.
- Se documentaron las incidencias iniciales y las mejoras propuestas.
- Se aclaró que la revisión fue estática y que no equivale a una prueba en ejecución.
- Se establece este archivo como punto central de contexto y seguimiento del proyecto.

## 8. Plantilla para futuras actualizaciones

Añadir una nueva entrada al principio de esta sección cada vez que haya una sesión de trabajo relevante:

### AAAA-MM-DD — Título de la sesión

- **Conversación/decisiones:** resumen de requisitos, dudas resueltas y decisiones acordadas.
- **Archivos revisados:** rutas de los archivos consultados.
- **Archivos modificados:** rutas y resumen de los cambios.
- **Pruebas realizadas:** pasos, entorno y resultado verificable.
- **Estado:** implementado / revisado estáticamente / probado / pendiente.
- **Documentación actualizada:** documentos creados o modificados.
- **Pendiente:** tareas siguientes, bloqueos y cuestiones abiertas.


## 9. Planificación hasta fin de curso

### 2026-11-26 — Creación de la planificación

- Se creó `docs/04-planificacion/planificacion.md`.
- La planificación propone 28 sesiones de 3 horas (84 horas en total), desde finales de noviembre de 2026 hasta junio de 2027, tomando junio como fecha provisional de fin de curso.
- Se divide el trabajo en organización y análisis, requisitos y diseño, datos y entorno, backend, usuarios y autenticación, funcionalidades de gestión, integración frontend/backend, calidad, seguridad, estabilización y entrega.
- Cada sesión reserva como orientación 2 horas para implementación, 30 minutos para pruebas y 30 minutos para documentación y seguimiento.
- Se incluyen hitos, criterios de cierre, prioridades para recortar alcance y una tabla de registro de sesiones.
- **Estado:** planificación creada y guardada en GitHub. Es una propuesta inicial; las tareas aún no están realizadas y el calendario debe ajustarse cuando se confirme la fecha exacta de entrega y el alcance definitivo.


## 10. Información nueva: base de datos existente

### 2026-11-26 — El usuario confirma que la base de datos ya está creada

- El usuario indica que dispone de una base de datos creada y que contiene tablas.
- Todavía no se han recibido ni inspeccionado los archivos de la base de datos; por tanto, se desconocen el motor, las tablas, columnas, relaciones, claves, restricciones e índices concretos.
- **Decisión de planificación:** no diseñar ni crear la BD desde cero por defecto. Cuando se reciban los archivos, revisar el esquema existente y contrastarlo con los requisitos; proponer únicamente los ajustes necesarios.
- Se han adaptado las semanas 5 y 6 de `docs/04-planificacion/planificacion.md` para auditar y validar la base de datos existente.
- **Estado:** información comunicada por el usuario; revisión técnica pendiente de recibir los archivos.


## 11. Infraestructura AWS comunicada por el usuario

### 2026-11-26 — Arquitectura de dos servidores

- El usuario confirma que el proyecto dispone de **dos servidores en AWS**:
  - **Servidor WEB:** aloja todo lo relacionado con la página web.
  - **Servidor BD:** aloja la base de datos y solo permite el acceso desde el servidor WEB.
- El flujo lógico conocido es: navegador/usuario → servidor WEB → servidor BD.
- La restricción de acceso descrita significa que la base de datos no está expuesta para acceso directo desde los clientes; las peticiones de la aplicación deben pasar por el servidor WEB.
- **Pendiente de verificar:** servicios y sistema operativo de cada instancia, motor y versión de base de datos, mecanismo de conexión entre servidores, reglas concretas de Security Groups/NACL/firewall, direccionamiento privado, puertos, TLS, gestión de credenciales, copias de seguridad y monitorización.
- No se ha inspeccionado la configuración real de AWS; el diagrama arquitectónico es conceptual y se basa en la descripción del usuario.
- **Implicación para el desarrollo:** configurar el backend en WEB para conectarse a BD mediante la red y permisos autorizados; no incluir credenciales de BD en el frontend ni permitir conexiones directas desde el navegador.
- **Estado:** arquitectura comunicada por el usuario; revisión técnica y pruebas de conectividad pendientes.


## 12. Motor de base de datos confirmado

### 2026-11-26 — Confirmación de MySQL

- El usuario confirma que el motor de base de datos del servidor BD de AWS es **MySQL**.
- Arquitectura tecnológica conocida:
  - Servidor WEB AWS: aplicación web y backend PHP.
  - Servidor BD AWS: MySQL.
  - El servidor WEB es el único origen autorizado, según lo comunicado, para acceder al servidor BD.
- **Orientación técnica para la integración:** utilizar PDO de PHP con el controlador `pdo_mysql`, consultas preparadas y credenciales protegidas en configuración del servidor/variables de entorno, nunca en el frontend ni en el repositorio.
- **Pendiente de verificar:** versión de MySQL, versión de PHP, disponibilidad de `pdo_mysql`, host privado/puerto, nombre de la base de datos, usuario y privilegios mínimos, TLS si aplica y conectividad desde WEB.
- No se han recibido credenciales ni se han realizado conexiones o pruebas contra AWS.
- **Estado:** motor MySQL confirmado por el usuario; integración técnica pendiente.


## 13. Herramientas de trabajo y acceso a los servidores

### 2026-11-26 — Entorno de administración confirmado

- El usuario confirma que actualmente:
  - Se conecta a la base de datos MySQL mediante **MySQL Workbench**.
  - Accede al servidor WEB mediante **VS Code con SSH**.
- Flujo habitual de trabajo conocido:
  - Edición y administración de archivos del sitio/backend en el servidor WEB a través de VS Code Remote SSH.
  - Administración y consulta del esquema/datos MySQL mediante MySQL Workbench.
  - GitHub se utiliza como repositorio del proyecto y documentación.
- **Pendiente de documentar/verificar:** si el repositorio local de Git está en el propio servidor WEB o en otra máquina; cómo se sincronizan los cambios entre VS Code/servidor y GitHub; si Workbench conecta a MySQL por túnel SSH, VPN o red privada; y qué entorno se usa para pruebas.
- **Buenas prácticas acordadas como orientación:** no guardar contraseñas ni claves SSH en el repositorio; no compartir secretos en el chat; exportar el esquema SQL sin datos personales ni credenciales cuando se vaya a revisar; mantener copias de seguridad antes de cambios de estructura o datos.
- **Estado:** herramientas comunicadas por el usuario; configuración exacta de conexiones y flujo Git aún pendiente de verificar.


## 14. Configuración de usuarios y túnel SSH para MySQL Workbench

### 2026-11-26 — Confirmación del usuario SSH y del mecanismo de conexión

- El usuario confirma que utiliza el usuario Linux **`ubuntu`** para conectarse por SSH al servidor WEB de AWS desde VS Code.
- El usuario confirma que utiliza **el mismo archivo de clave privada `.pem`** para:
  - Conectarse al servidor WEB mediante VS Code Remote SSH.
  - Configurar MySQL Workbench para establecer el túnel SSH hacia el servidor WEB.
- **Flujo de MySQL Workbench comunicado:** MySQL Workbench se ejecuta en el ordenador del usuario, autentica el salto SSH al servidor WEB mediante el usuario `ubuntu` y la clave `.pem`, y desde ese túnel alcanza el servidor MySQL del servidor BD.
- La autenticación SSH al servidor WEB y la autenticación de MySQL son independientes:
  - SSH: usuario Linux `ubuntu` + clave privada `.pem`.
  - MySQL: usuario MySQL + contraseña propios.
- El servidor WEB actúa como salto/intermediario SSH para el túnel; el servidor BD no necesita exponerse directamente a Internet para este flujo.
- **No se ha confirmado** el nombre del usuario MySQL, host/puerto configurados en Workbench, puerto local del túnel, ni los valores exactos de la configuración SSH.
- El usuario comenta que suele tener problemas de conexión por confusión entre usuarios. Se acuerda identificar y ordenar las cuentas y permisos antes de modificar configuraciones.
- **Seguridad:** no solicitar ni almacenar en GitHub la clave `.pem`, contraseñas, claves privadas ni otros secretos. Para diagnosticar, pedir únicamente nombres de usuario, mensajes de error redactados y parámetros no sensibles.
- **Estado:** usuario SSH `ubuntu` y reutilización de la misma clave `.pem` confirmados por el usuario; túnel descrito por el usuario; conexión y permisos no probados ni auditados en esta sesión.
- **Siguiente paso:** identificar el usuario MySQL usado en Workbench y, si persisten los fallos, revisar los campos de conexión y el mensaje de error sin compartir credenciales.


## 15. Direcciones y usuario MySQL comunicados

### 2026-11-26 — Datos concretos de conexión aportados por el usuario

- **Servidor WEB (AWS EC2):**
  - Usuario SSH: `ubuntu`.
  - Autenticación: clave privada `.pem` (la misma que se utiliza en VS Code Remote SSH y en el túnel SSH de MySQL Workbench).
  - Dirección: IP pública de la instancia.
  - **Incidencia:** el usuario indica que la IP pública debe cambiarse/actualizarse cada vez que la máquina vuelve a iniciarse. Esto es compatible con el comportamiento de una IPv4 pública autoasignada cuando una instancia EC2 se detiene y se vuelve a iniciar; no se ha comprobado el ciclo exacto de la instancia ni su configuración de red.
- **Servidor BD (AWS EC2):**
  - IP privada comunicada: `172.31.30.194`.
  - Usuario MySQL utilizado: `campus_admin`.
  - Motor: MySQL.
  - El acceso se realiza a través del túnel SSH establecido por el servidor WEB.
- **Flujo de conexión conocido:** ordenador del usuario → SSH al servidor WEB (`ubuntu` + `.pem`) → túnel hacia la IP privada `172.31.30.194` → autenticación MySQL con `campus_admin`.
- **Distinción de identidades:** `ubuntu` es el usuario del sistema Linux para SSH; `campus_admin` es una cuenta de MySQL. No son el mismo usuario ni comparten necesariamente credenciales.
- **Mejora posible para la IP cambiante del WEB:** valorar asignar una **Elastic IP** a la instancia WEB o utilizar un nombre DNS estable. Antes de hacerlo, revisar la configuración de red y los costes vigentes de direcciones IPv4 públicas en AWS. No se ha asignado ni configurado ninguna Elastic IP.
- **Pendiente de verificar:** IP pública actual del WEB (no es necesario guardarla aquí), tipo de dirección pública asignada, si la instancia se detiene/inicia o solo se reinicia, configuración exacta de Workbench (host/puerto MySQL de destino y puerto local del túnel), reglas de Security Groups y permisos de `campus_admin`.
- **Seguridad:** no incluir aquí la IP pública si no es necesaria, ni contraseñas, contenido de la clave `.pem`, claves privadas o secretos. No cambiar usuarios, permisos ni reglas de AWS sin revisar antes la configuración y realizar copia/plan de reversión cuando corresponda.
- **Estado:** datos de conexión comunicados por el usuario; no se han realizado pruebas de conectividad ni cambios en AWS.
- **Siguiente paso:** comprobar si la instancia WEB se detiene y arranca (stop/start) o si solo se reinicia, y revisar de forma no sensible los campos de conexión de Workbench. Después se podrá decidir si conviene una Elastic IP.
