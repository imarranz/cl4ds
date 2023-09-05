

 
## Opciones Avanzadas

En esta sección, exploraremos opciones avanzadas de `nbconvert` que te permitirán personalizar aún más la conversión de tus notebooks de Jupyter y adaptarla a tus necesidades específicas.

### Uso de `tags`

El uso de tags en `nbconvert` es una funcionalidad importante que te permite controlar qué partes de tus notebooks de Jupyter se incluyen o excluyen en el documento de salida final. Esto es útil cuando deseas personalizar la apariencia y el contenido de tus documentos convertidos. En cuanto a la ubicación apropiada, esta información podría encajar bien en el apartado de "Opciones Avanzadas", ya que las tags son una característica avanzada que te permite un alto grado de personalización en la conversión de tus notebooks. Puedes agregar una subsección específica en ese apartado titulada "Uso de Tags en nbconvert" para tratar este tema en detalle.

Una descripción general de cómo funcionan las tags en `nbconvert`:

#### Uso de Tags en nbconvert

Las tags son etiquetas especiales que puedes agregar a las celdas de tu notebook de Jupyter para controlar cómo se comportan durante la conversión con `nbconvert`. Estas etiquetas te permiten definir qué celdas se incluyen o excluyen en el documento final, lo que es especialmente útil cuando deseas personalizar el contenido de la salida. A continuación, se describen algunas etiquetas comunes y cómo se utilizan:

  * **`hide_input` (ocultar entrada):** Al agregar esta etiqueta a una celda, `nbconvert` omitirá el contenido de entrada de la celda en el documento de salida. Esto es útil cuando deseas mostrar solo el resultado o el texto explicativo sin el código fuente.

  * **`hide_output` (ocultar salida):** Con esta etiqueta, `nbconvert` omitirá cualquier resultado producido por la celda en el documento final. Es útil cuando deseas mostrar solo el código fuente o el texto sin los resultados.

  * **`hide_cell` (ocultar celda):** Al agregar esta etiqueta a una celda, `nbconvert` excluirá completamente la celda, incluyendo tanto la entrada como la salida, del documento convertido. Esto es útil cuando deseas eliminar una celda específica de la salida final.

  * **`remove_input` (eliminar entrada):** Similar a `hide_input`, esta etiqueta elimina la entrada de una celda, pero a diferencia de `hide_input`, no muestra ningún espacio en blanco en su lugar. Esto puede ser útil para lograr un formato más limpio en el documento de salida.

  * **`remove_output` (eliminar salida):** Similar a `hide_output`, esta etiqueta elimina la salida de una celda, pero no muestra ningún espacio en blanco en su lugar. Esto puede ayudar a mantener una apariencia más limpia en el documento de salida.

Puedes asignar estas etiquetas a las celdas en Jupyter Notebook o Jupyter Lab desde la barra de herramientas o mediante atajos de teclado. Una vez que has etiquetado tus celdas según tus preferencias, `nbconvert` respetará esas etiquetas al realizar la conversión, permitiéndote personalizar con precisión qué contenido se muestra y qué se oculta en el documento de salida final.

Este enfoque de etiquetado te brinda un mayor control sobre el aspecto y la estructura de tus documentos convertidos, lo que es especialmente útil al preparar informes, tutoriales o presentaciones en las que deseas mostrar información específica y ocultar detalles innecesarios.

A continuación, se muestran ejemplos de uso de `tags` desde la línea de comandos:

**Ejemplo 1: Ocultar la entrada de las celdas etiquetadas con `hide_input`**

Supongamos que tienes un notebook llamado "notebook.ipynb" y deseas convertirlo a HTML, pero ocultar la entrada de todas las celdas etiquetadas con `hide_input`. Puedes lograrlo utilizando el siguiente comando:

```bash
jupyter nbconvert --to html --TagRemovePreprocessor.remove_input_tags='{"hide_input"}' notebook.ipynb
```

Este comando utiliza el preprocesador `TagRemovePreprocessor` para eliminar la entrada de todas las celdas etiquetadas con `hide_input` durante la conversión a HTML.

**Ejemplo 2: Ocultar la salida de las celdas etiquetadas con `hide_output`**

Si deseas ocultar la salida de todas las celdas etiquetadas con `hide_output` al convertir el notebook a HTML, puedes usar el siguiente comando:

```bash
jupyter nbconvert --to html --TagRemovePreprocessor.remove_output_tags='{"hide_output"}' notebook.ipynb
```

Este comando utiliza el preprocesador `TagRemovePreprocessor` para eliminar la salida de todas las celdas etiquetadas con `hide_output` durante la conversión a HTML.

Estos ejemplos demuestran cómo puedes utilizar etiquetas específicas en `nbconvert` desde la línea de comandos para controlar qué partes de tus celdas se muestran o se ocultan en el documento de salida final. Puedes personalizar aún más la conversión ajustando las etiquetas y utilizando preprocesadores específicos para lograr el formato deseado en tus documentos convertidos.


### Personalización de las plantillas

`nbconvert` ofrece la capacidad de personalizar la apariencia y el formato de los documentos de salida mediante el uso de plantillas. Puedes aprovechar las siguientes opciones de personalización:

#### Uso de plantillas predefinidas

`nbconvert` incluye una variedad de plantillas predefinidas para diferentes formatos de salida, como HTML, LaTeX y slides de diapositivas. Puedes especificar una plantilla predefinida utilizando la opción `--template`. Por ejemplo, para utilizar una plantilla HTML predefinida:

```bash
jupyter nbconvert --to html --template basic nombre_del_notebook.ipynb
```

Esto aplicará la plantilla "basic" a la conversión HTML.

#### Creación de plantillas personalizadas

Si deseas un control completo sobre la apariencia de la salida, puedes crear tus propias plantillas personalizadas. Para ello, debes crear un archivo de plantilla utilizando el lenguaje de marcado de plantilla Jinja2. Luego, puedes utilizar tu plantilla personalizada con la opción `--template`. Por ejemplo:

```bash
jupyter nbconvert --to html --template mi_plantilla.tpl nombre_del_notebook.ipynb
```

Esto aplicará tu plantilla personalizada llamada "mi_plantilla.tpl" a la conversión HTML.

### Configuración de encabezados y pies de página

`nbconvert` te permite personalizar los encabezados y pies de página de los documentos de salida. Puedes agregar información adicional, como números de página, títulos, fechas y más. Esto es útil para la identificación y la presentación profesional de tus documentos. Puedes configurar encabezados y pies de página mediante opciones de línea de comandos o utilizando plantillas personalizadas.

### Manipulación de metadatos

Los metadatos son información adicional asociada a tu notebook, como el título, el autor y la fecha de creación. `nbconvert` te permite manipular estos metadatos antes de la conversión. Puedes utilizar la opción `--NbConvertApp.exporter_preprocessors` para especificar un preprocesador que modifique los metadatos antes de la conversión.

Por ejemplo, para cambiar el autor de un notebook antes de la conversión:

```bash
jupyter nbconvert --to html --Exporter.preprocessors="['SetAuthorPreprocessor']" nombre_del_notebook.ipynb
```

### Uso de preprocesadores y postprocesadores

`nbconvert` admite preprocesadores y postprocesadores que te permiten realizar modificaciones en el notebook antes o después de la conversión. Los preprocesadores actúan antes de la conversión, mientras que los postprocesadores actúan después.

Por ejemplo, puedes utilizar el preprocesador "ClearOutputPreprocessor" para eliminar todas las salidas del notebook antes de la conversión a otro formato. Esto puede ser útil si deseas compartir el código sin los resultados.

```bash
jupyter nbconvert --to html --NbConvertApp.preprocessors="['ClearOutputPreprocessor']" nombre_del_notebook.ipynb
```

Estas opciones avanzadas de `nbconvert` te permiten personalizar la conversión de tus notebooks de Jupyter de manera más detallada y adaptarla a tus necesidades específicas. Ya sea mediante la creación de plantillas personalizadas, la configuración de encabezados y pies de página, la manipulación de metadatos o el uso de preprocesadores y postprocesadores, puedes obtener resultados precisos y profesionales para tus proyectos y presentaciones.
