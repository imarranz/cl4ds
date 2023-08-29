<h3 align="center">Una colección de listas, manuales, trucos, blogs, software y herramientas CLI y más.</h3>

<br>

<p align="center">
  <a href="https://github.com/imarranz/cl4ds/pulls">
    <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?longCache=true" alt="Pull Requests">
  </a>
  <a href="LICENSE.md">
    <img src="https://img.shields.io/badge/License-MIT-lightgrey.svg?longCache=true" alt="MIT License">
  </a>
</p>

<p align="center">
  <a href="https://twitter.com/imarranz" target="_blank">
    <img src="https://img.shields.io/twitter/follow/imarranz.svg?logo=twitter">
  </a>
</p>

<!--
<div align="center">
  <sub>Creado por
  <a href="https://twitter.com/imarranz">imarranz</a> and
  <a href="https://github.com/imarranz/">imarranz</a>
</div>
-->

****

# Command Line for Data Science (CL4DS)

## Introducción

<img align="left" width="225" height="225" src="https://images-na.ssl-images-amazon.com/images/I/91m1qz7cHqL._AC_UL600_SR600,600_.jpg"> Este libro, _Data Science at the Command Line_, me ha gustado siempre por su enfoque. No trata sobre metodologías en Data Science ni conceptos estadísticos profundos pero da herramientas, consejos y ejemplos concretos para llevar a cabo tareas fundamentales de manera eficiente utilizando la línea de comandos. Es un libro práctico que se enfoca en la implementación efectiva, lo que lo convierte en un recurso valioso para aquellos que buscan mejorar sus habilidades prácticas en el ámbito de Data Science.

Este libro me ha ayudado mucho y es el que ha servido de inspiración para iniciar este repositorio que tiene como finalidad ser un espacio de aprendizaje dedicado a la intersección entre Data Science y el uso eficiente de programas mediante línea de comandos.

La Ciencia de Datos ha transformado la manera en que abordamos la información y extraemos conocimientos significativos de los datos. A través de análisis, visualizaciones y modelado, hemos obtenido una comprensión más profunda del mundo que nos rodea. En este contexto, me gustaría que CL4DS sea un recurso interesante para aquellos que desean avanzar en este campo, aprovechando al máximo las capacidades de la línea de comandos. En este repositorio, podréis encontraros una amplia gama de manuales, recursos y materiales. Estos recursos están diseñados para la aplicación de conceptos y técnicas de Ciencia de Datos mediante la línea de comandos.

Este repositorio está destinado a la interacción y el crecimiento colaborativo. Sois libres de explorar, cuestionar y compartir vuestros conocimientos.

Mi finalidad es generar manuales de `awk`, `sed`, `nbconvert`, `csvkit`, ... con explicaciones sencillas, recursos útiles y muchos ejemplos.

## Explorando el Repositorio CL4DS: Manuales Detallados para Herramientas de Data Science

En este repositorio se desarrollará una colección de manuales de herramientas basadas en línea de comandos útiles en el campo de la Ciencia de Datos, desde bibliotecas de programación y funciones hasta aplicaciones especializadas. Mi intención es que cada manual proporcione instrucciones detalladas sobre cómo utilizar estas herramientas de manera efectiva y eficiente.

Mi propósito es que este repositorio sea estático; está diseñado para crecer y evolucionar con el tiempo. Mi compromiso es mantener este espacio con recursos actualizados. A medida que el campo de la Ciencia de Datos continúa desarrollándose, también lo hará esta colección de manuales.

En principio, los manuales estarán escritos en markdown y desarrollaré scripts y makefiles para poder exportar dichos manuales a otros formatos: pdf, html vía mkdocs, ...

### Introducción a AWK

AWK es un lenguaje de programación versátil diseñado para el procesamiento y transformación de textos y datos tabulares. Su nombre deriva de las iniciales de sus creadores: [Aho, Alfred](https://en.wikipedia.org/wiki/Alfred_Aho), [Weinberger, Peter](https://en.wikipedia.org/wiki/Peter_J._Weinberger) y [Kernighan, Brian](https://en.wikipedia.org/wiki/Brian_Kernighan). AWK permite realizar una variedad de tareas, desde la extracción y manipulación de campos y registros en archivos hasta cálculos complejos y generación de informes. Su sintaxis simple pero poderosa lo convierte en una herramienta esencial en el kit de cualquier desarrollador o analista de datos.

En este manual, exploraremos los fundamentos de AWK, desde los conceptos básicos de su estructura hasta su aplicación en situaciones del mundo real. Aprenderemos a utilizar patrones y acciones para filtrar y transformar datos, así como a crear scripts más avanzados para automatizar tareas repetitivas. Si deseas profundizar en el procesamiento de texto y datos tabulares mediante AWK, estás en el lugar correcto.

> [!NOTE]
> Para obtener más información sobre AWK, puedes visitar el [proyecto oficial de AWK en GitHub](https://github.com/onetrueawk/awk).

#### Esquema para el Manual de AWK:

1. Introducción a AWK
   - ¿Qué es AWK y por qué es importante?
   - Historia y contexto de AWK.

2. Fundamentos de AWK
   - Estructura básica de un comando AWK.
   - Patrones y acciones.
   - Variables predefinidas en AWK.

3. Manipulación de Campos y Registros
   - Extracción y manipulación de campos.
   - Uso de delimitadores y separadores.
   - Concatenación y formateo de datos.

4. Filtrado y Transformación de Datos en AWK
   - Uso de patrones para filtrar registros.
   - Aplicación de acciones para transformar datos.
   - Ejemplos de filtrado y transformación.

5. Trabajo con Archivos Externos
   - Lectura y escritura de archivos.
   - Procesamiento de múltiples archivos.
   - Ejemplos de lectura y escritura de archivos.

6. Scripts AWK Avanzados
   - Estructura de un script AWK.
   - Funciones y bloques de código.
   - Automatización de tareas con scripts.

7. Casos de Uso Prácticos
   - Análisis de registros de registro.
   - Procesamiento de archivos de registro.
   - Generación de informes personalizados.

8. Recursos y Consejos para Trabajar con AWK
   - Optimización de rendimiento.
   - Estilo de codificación y legibilidad.
   - Recursos adicionales para aprender AWK.

### Introducción a csvkit

csvkit es una suite de herramientas diseñada específicamente para trabajar con archivos CSV (valores separados por comas) de manera eficiente. Manipular datos en formato CSV puede ser complicado, especialmente cuando se trata de limpiar, filtrar y transformar grandes conjuntos de datos. Csvkit simplifica este proceso al proporcionar un conjunto de comandos de línea de comandos que permiten realizar tareas comunes en archivos CSV de manera sencilla y efectiva.

En este manual, exploraremos las capacidades de csvkit para realizar operaciones como la conversión entre formatos CSV y otros formatos de datos, la unión de archivos CSV, la selección y filtrado de columnas, y mucho más. Aprenderemos cómo aprovechar al máximo estas herramientas para agilizar el flujo de trabajo con datos tabulares.

> [!NOTE]
> Si deseas obtener más información sobre csvkit, puedes consultar el [proyecto oficial de csvkit en GitHub](https://github.com/wireservice/csvkit) o leer la [documentación oficial de csvkit](https://csvkit.readthedocs.io/en/latest/)

#### Esquema para el Manual de csvkit:

1. Introducción a csvkit
   - ¿Qué es csvkit y por qué es útil?
   - Importancia de trabajar con archivos CSV.

2. Configuración y Primeros Pasos
   - Instalación de csvkit.
   - Visión general de las herramientas disponibles.
   - Lectura y visualización de archivos CSV.

3. Operaciones Básicas con csvkit
   - Conversión entre formatos de archivo.
   - Selección y filtrado de columnas.
   - Ordenamiento de datos en CSV.

4. Unión y Combinación de Datos
   - Combinación de múltiples archivos CSV.
   - Uso de claves para la unión de datos.
   - Manejo de duplicados y valores faltantes.

5. Limpieza y Transformación de Datos
   - Eliminación de espacios en blanco y caracteres no deseados.
   - Cambio de formato de datos.
   - Normalización y estandarización.

6. Análisis y Exploración de Datos
   - Cálculos estadísticos básicos.
   - Resumen y agregación de datos.
   - Generación de gráficos y visualizaciones.

7. Automatización de Tareas con csvkit
   - Uso de scripts y comandos en secuencias.
   - Integración con flujos de trabajo de línea de comandos.
   - Ejemplos de automatización.

8. Casos de Uso Prácticos
   - Procesamiento de datos de encuestas.
   - Análisis de datos de ventas.
   - Preparación de datos para análisis posterior.

9. Recursos y Consejos para Trabajar con csvkit
   - Enlaces a la documentación oficial de csvkit.
   - Tutoriales y ejemplos adicionales.
   - Comunidad y soporte.

## Más Información

Iré añadiendo recursos que haya ido encontrando mientras desarrollo los manuales que me parezcan interesantes.

### AWK

  * [Filtro: awk, grep, sed y cut](https://atareao.es/tutorial/terminal/filtros-awk-grep-sed-y-cut/)
  * [Curso avanzado de programación AWK y Bash para bioinformática y biocómputo en sistemas GNU/Linux](https://vinuesa.github.io/intro2linux/index.html)
  * [Introducción a AWK | pdf](https://www.um.es/innova/OCW/informatica-para-universitarios/ipu_docs/la_shell/awk.pdf)
  * [Uso del comando AWK en Linux y UNIX con ejemplos](https://geekland.eu/uso-del-comando-awk-en-linux-y-unix-con-ejemplos/)
  * [Process Multiple Input Files Using Awk](https://www.baeldung.com/linux/awk-multiple-input-files)
  * [Uso del comando AWK en Linux y UNIX con ejemplos](https://geekland.eu/uso-del-comando-awk-en-linux-y-unix-con-ejemplos/)

### csvkit

  * [csvkit, a command-line tool for reporters](https://github.com/utdata/csvkit-nicar)

## Contribución

> [!IMPORTANT]
> Si encuentras algo que no tenga sentido o que no parezca correcto, puedes realizar una solicitud de extracción (pull request) y agregando explicaciones válidas y bien razonadas sobre los cambios o comentarios.

Algunas reglas simples que me gustaría mantener para este proyecto:

  - Los cambios deben ser interesantes
  - Los cambios deben ser claros
  - Los cambios deben ser útiles
