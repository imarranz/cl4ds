
## Filtrado y Transformación de Datos en AWK

Una de las capacidades más poderosas de AWK es su habilidad para filtrar y transformar datos de manera selectiva en archivos de texto. Esta funcionalidad nos permite realizar operaciones específicas en registros que cumplen ciertos criterios, así como aplicar transformaciones para adaptar los datos a nuestras necesidades. En este apartado, exploraremos cómo utilizar AWK para filtrar registros basados en patrones y realizar transformaciones efectivas en los datos. Con estas habilidades, podremos procesar grandes conjuntos de datos de manera precisa y eficiente.

### Uso de Patrones para Filtrar Registros

En AWK, los patrones son herramientas esenciales para seleccionar registros específicos en función de ciertas condiciones. Los patrones nos permiten filtrar los registros que cumplen con ciertos criterios y procesar solo aquellos que son relevantes para tu tarea. A través del uso de expresiones regulares y comparaciones, podemos definir patrones que se ajusten a nuestras necesidades de filtrado. En este subapartado, exploraremos cómo utilizar patrones en AWK para filtrar registros de manera efectiva.

#### Patrones Básicos

Los patrones básicos pueden ser cadenas de texto simples que buscas en los registros. Cuando un registro contiene la cadena especificada, se considera que cumple con el patrón y se procesará de acuerdo con las acciones definidas.

Ejemplo:
```awk
/ventas/ {print "Registro de ventas:", $0}
```

En este ejemplo, todos los registros que contienen la palabra "ventas" en alguna parte serán seleccionados y sus detalles se imprimirán.

#### Expresiones Regulares

AWK admite el uso de expresiones regulares para patrones más flexibles y complejos. Las expresiones regulares nos permiten buscar patrones específicos dentro de los registros, lo que aumenta significativamente la capacidad de filtrado.

Ejemplo:
```awk
/^Cliente-[0-9]+$/ {print "Cliente:", $0}
```

Este ejemplo selecciona registros que comienzan con "Cliente-" seguido de uno o más dígitos numéricos, lo que coincide con nombres de cliente con números.

#### Combinación de Patrones

Podemos combinar múltiples patrones utilizando operadores lógicos como `&&` (y) y `||` (o). Esto nos permite definir condiciones más complejas para la selección de registros.

Ejemplo:
```awk
/ventas/ && $3 > 1000 {print "Venta importante:", $0}
```

En este ejemplo, los registros que contienen "ventas" en algún lugar y cuyo tercer campo es mayor que 1000 serán seleccionados y se etiquetarán como "Venta importante".

#### Negación de Patrones

Podemos negar un patrón utilizando el operador `!`. Esto selecciona los registros que no cumplen con el patrón especificado.

Ejemplo:
```awk
!/error/ {print "Registro sin errores:", $0}
```

Este ejemplo imprime los registros que no contienen la palabra "error".

La habilidad para filtrar registros usando patrones nos permite procesar solo la información relevante en nuestros archivos de texto. Mediante la combinación de patrones con acciones, podemos realizar transformaciones específicas en los registros seleccionados, lo que aumenta la eficiencia y precisión de nuestras tareas de procesamiento de datos.


### Aplicación de Acciones para Transformar Datos

Una vez que hemos seleccionado registros mediante patrones, es hora de aplicar acciones que transformarán los datos de acuerdo a nuestras necesidades. Las acciones en AWK nos permiten realizar cambios en los campos de los registros, realizar cálculos y generar nuevos datos a partir de los existentes. Estas acciones son fundamentales para adaptar los datos a formatos específicos o realizar análisis más avanzados. En este subapartado, exploraremos cómo utilizar acciones en AWK para transformar datos de manera efectiva.

#### Modificación de Campos

Podemos modificar campos en un registro asignando nuevos valores a las variables de campo, como `$1`, `$2`, etc. Esto es útil para corregir errores, cambiar formatos o actualizar información.

Ejemplo:
```awk
{if ($3 < 0) $3 = 0; print}
```

En este ejemplo, si el tercer campo es negativo, se establece en cero antes de imprimir el registro.

#### Cálculos y Operaciones

Las acciones en AWK nos permiten realizar cálculos aritméticos y lógicos utilizando las variables de campo. Podemos combinar campos y realizar operaciones matemáticas complejas.

Ejemplo:
```awk
{total = $2 + $3; print "Total:", total}
```

Este ejemplo suma el segundo y tercer campo para calcular un total.

#### Generación de Nuevos Datos

Podemos utilizar acciones para generar nuevos datos o campos a partir de la información existente en un registro. Esto es útil para crear resúmenes, informes o datos agregados.

Ejemplo:
```awk
{if ($4 > 100) categoria = "Alto"; else categoria = "Bajo"; print categoria}
```

Este ejemplo asigna la categoría "Alto" o "Bajo" en función del valor del cuarto campo y luego imprime la categoría.

#### Uso de Variables y Asignaciones

Las variables en AWK nos permiten almacenar valores temporales durante el procesamiento. Podemos usar estas variables para realizar cálculos y tomar decisiones basadas en los datos.

Ejemplo:
```awk
{subtotal = $2 * $3; if (subtotal > 50) print "Pedido grande:", $0}
```

En este ejemplo, se calcula el subtotal multiplicando el segundo y tercer campo, y luego se imprime el registro si el subtotal es mayor que 50.

Las acciones nos dan el poder de transformar datos de maneras creativas y personalizadas. Al combinar estas acciones con patrones, podemos filtrar registros de manera selectiva y aplicar transformaciones precisas, lo que nos permitirá adaptar los datos a nuestras necesidades específicas.

### Ejemplos de Filtrado y Transformación

Para comprender mejor cómo funciona el filtrado y la transformación de datos en AWK, veamos algunos ejemplos prácticos. Estos ejemplos nos darán una idea clara de cómo aplicar patrones y acciones para lograr resultados específicos en diferentes situaciones de procesamiento de datos.

#### Ejemplo 1: Filtrado de Registros

Supongamos que tenemos un archivo de registros de ventas y queremos seleccionar únicamente aquellos registros donde la cantidad vendida supere un cierto umbral.

```awk
$3 > 1000 {print "Venta grande:", $0}
```

En este ejemplo, todos los registros con ventas mayores a 1000 se seleccionarán y se etiquetarán como "Venta grande".

#### Ejemplo 2: Corrección de Errores

Imagina que tenemos un archivo con registros de temperaturas en grados Celsius, pero algunos valores están negativos debido a errores en la medición. Queremos corregir estos valores negativos y convertirlos a positivos.

```awk
{if ($2 < 0) $2 = -$2; print}
```

Aquí, si la temperatura es negativa, se convierte a positiva antes de imprimir el registro.

#### Ejemplo 3: Agregación de Datos

Supongamos que tenemos un archivo con registros de ventas por categoría y queremos calcular el total de ventas para cada categoría.

```awk
{ventas_por_categoria[$1] += $2}
END {for (categoria in ventas_por_categoria) print categoria, ventas_por_categoria[categoria]}
```

En este caso, se utiliza una matriz asociativa para almacenar las ventas acumuladas por categoría. Al final del procesamiento (`END`), se imprime el total de ventas para cada categoría.

#### Ejemplo 4: Formateo de Salida

Imaginemos que tenemos un archivo con registros de productos y queremos imprimir un informe bien formateado con los nombres y precios de los productos.

```awk
BEGIN {FS = ","; printf "%-20s %10s\n", "Nombre del Producto", "Precio"}
{printf "%-20s %10s\n", $1, $2}
```

En este ejemplo, se establece el delimitador a coma, y luego se utiliza `printf` para formatear y presentar los nombres y precios de los productos en columnas alineadas.

Estos ejemplos ilustran cómo utilizar AWK para filtrar registros basados en patrones y aplicar acciones para transformar los datos. Con patrones y acciones, podemos abordar una amplia variedad de tareas de procesamiento de datos y lograr resultados precisos y eficientes.
