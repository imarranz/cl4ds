

## Uso Básico

En este apartado, exploraremos el uso básico de `nbconvert` y cómo puedes convertir tus notebooks de Jupyter en diferentes formatos. También abordaremos las opciones de línea de comandos comunes y cómo realizar conversiones por lotes.

### Conversión de un notebook a otro formato

`nbconvert` te permite convertir notebooks de Jupyter en una variedad de formatos útiles. A continuación, se describen los formatos más comunes a los que puedes convertir tus notebooks:

#### Conversión a Markdown

Puedes convertir un notebook a formato Markdown utilizando el siguiente comando:

```bash
jupyter nbconvert --to markdown nombre_del_notebook.ipynb
```

Esto generará un archivo Markdown (.md) que contiene el contenido de tu notebook en un formato de texto enriquecido.

#### Conversión a HTML

Si deseas crear una versión web de tu notebook, puedes utilizar el siguiente comando para convertirlo a HTML:

```bash
jupyter nbconvert --to html nombre_del_notebook.ipynb
```

Esto generará un archivo HTML que puedes abrir en un navegador web y compartir en línea.

#### Conversión a PDF

Para crear un archivo PDF a partir de tu notebook, puedes utilizar el siguiente comando:

```bash
jupyter nbconvert --to pdf nombre_del_notebook.ipynb
```

Este comando utilizará LaTeX para generar un archivo PDF que conservará el formato y los elementos interactivos de tu notebook.

#### Conversión a otros formatos compatibles

`nbconvert` admite una variedad de otros formatos de salida, como LaTeX, slides de diapositivas, archivos de script y más. Puedes explorar estas opciones utilizando la opción `--to` seguida del formato deseado. Por ejemplo, puedes convertir a LaTeX con `--to latex` o a slides con `--to slides`.

### Opciones de línea de comandos comunes

`nbconvert` ofrece varias opciones de línea de comandos que te permiten personalizar la conversión de tus notebooks. Algunas de las opciones más comunes incluyen:

#### Especificar el formato de salida

Puedes especificar el formato de salida utilizando la opción `--to` seguida del formato deseado. Por ejemplo:

```bash
jupyter nbconvert --to html nombre_del_notebook.ipynb
```

#### Establecer el nombre de archivo de salida

Puedes definir el nombre del archivo de salida utilizando la opción `--output` seguida del nombre de archivo deseado:

```bash
jupyter nbconvert --to markdown nombre_del_notebook.ipynb --output nombre_de_salida.md
```

#### Personalizar el estilo de la conversión

Para personalizar el estilo de la conversión, puedes utilizar hojas de estilo (CSS) personalizadas o plantillas específicas. Puedes especificar una plantilla personalizada utilizando la opción `--template`. Por ejemplo:

```bash
jupyter nbconvert --to html nombre_del_notebook.ipynb --template plantilla_personalizada.tpl
```

### Conversión por lotes

`nbconvert` también te permite realizar conversiones por lotes, lo que significa que puedes convertir varios notebooks a la vez en el mismo formato o en diferentes formatos. Para hacerlo, simplemente proporciona los nombres de los notebooks que deseas convertir como argumentos adicionales en el comando. Por ejemplo:

```bash
jupyter nbconvert --to html notebook1.ipynb notebook2.ipynb notebook3.ipynb
```

Esto convertirá los tres notebooks a formato HTML en una sola ejecución.

Con estas herramientas básicas, estás preparado para utilizar `nbconvert` de manera efectiva para convertir tus notebooks de Jupyter en diferentes formatos según tus necesidades. En las secciones siguientes de este manual, exploraremos opciones más avanzadas, como la personalización de plantillas y la configuración de encabezados y pies de página.
