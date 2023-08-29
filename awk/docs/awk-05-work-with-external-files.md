 

## Trabajo con Archivos Externos en AWK

AWK no solo es capaz de procesar datos desde la entrada estándar, sino que también puede trabajar con archivos externos, lo que amplía sus capacidades de procesamiento y análisis. La habilidad de leer y escribir en archivos nos permite manipular conjuntos de datos más grandes y realizar tareas más complejas en el contexto de nuestros flujos de trabajo. En este apartado, exploraremos cómo AWK puede interactuar con archivos externos, lo que nos permitirá llevar a cabo tareas de procesamiento de datos más avanzadas y completas.


### Lectura y Escritura de Archivos

AWK nos brinda la capacidad de leer y escribir en archivos externos, lo que nos permite manipular datos almacenados en archivos y generar resultados en nuevos archivos. Esta funcionalidad es esencial para trabajar con conjuntos de datos más grandes y realizar tareas que involucren múltiples pasos de procesamiento. En este subapartado, exploraremos cómo leer y escribir archivos en AWK, lo que nos permitirá expandir nuestras posibilidades de procesamiento de datos.

#### Lectura de Archivos

Para leer datos desde un archivo, podemos utilizar la función `getline` y redirigir la entrada hacia la variable `$0`. Esto nos permite procesar línea por línea el contenido del archivo.

Ejemplo:
```awk
{
    while (getline < "datos.csv") {
        # Procesar cada línea del archivo datos.csv
        print "Línea leída:", $0
    }
    close("datos.csv"); # Cierra el archivo después de leerlo
}
```

#### Escritura en Archivos

AWK también nos permite escribir en archivos externos utilizando la función `print` y redirigiendo la salida hacia un archivo.

Ejemplo:
```awk
BEGIN {
    archivo_salida = "resultados.txt"
}
{
    # Realiza algún procesamiento en los datos
    resultado = $2 * 2

    # Escribe el resultado en el archivo de salida
    print "Resultado:", resultado > archivo_salida
}
END {
    close(archivo_salida); # Cierra el archivo después de escribirlo
}
```

En este ejemplo, se calcula un resultado a partir del segundo campo y se escribe en un archivo de salida llamado `resultados.txt`.

#### Modo de Lectura y Escritura

Cuando trabajas con archivos, AWK maneja los modos de lectura y escritura automáticamente. Al usar `getline`, AWK abre el archivo en modo de lectura, y cuando utilizas `print > archivo`, AWK abre el archivo en modo de escritura. Es importante recordar que una vez que un archivo ha sido abierto con `getline`, no puede ser utilizado como destino de escritura y viceversa.

La lectura y escritura de archivos en AWK nos permite llevar a cabo tareas más avanzadas de procesamiento de datos y generar resultados en formato legible. Al combinar estas capacidades con patrones y acciones, tendrás la flexibilidad necesaria para trabajar con conjuntos de datos más complejos y realizar tareas más elaboradas.

### Procesamiento de Múltiples Archivos

AWK también es capaz de manejar múltiples archivos en un solo programa, lo que nos permite procesar conjuntos de datos distribuidos en varios archivos. Esta funcionalidad es especialmente útil cuando necesitas realizar operaciones comparativas entre diferentes conjuntos de datos o cuando deseas combinar información de múltiples fuentes. En este subapartado, exploraremos cómo AWK puede procesar múltiples archivos de manera efectiva.

#### Especificación de Múltiples Archivos

Podemos especificar múltiples archivos como argumentos en la línea de comandos al invocar AWK. Dentro del programa AWK, podemos acceder al nombre del archivo actual mediante la variable predefinida `FILENAME`.

Ejemplo:
```awk
{
    print "Archivo:", FILENAME, "Línea:", $0
}
```

En este ejemplo, cada línea de todos los archivos especificados será procesada y se imprimirá el nombre del archivo junto con el contenido de la línea.

#### Combinación de Archivos

Podemos combinar el contenido de varios archivos para realizar operaciones comparativas o para crear conjuntos de datos más completos. Esto es útil para unir datos de diferentes fuentes en un solo lugar.

Ejemplo:
```awk
FNR == 1 {print "Archivo:", FILENAME}  # Imprime el nombre del archivo en la primera línea
{print $2}  # Imprime el segundo campo de todos los archivos
```

En este ejemplo, el nombre del archivo se imprime en la primera línea de cada archivo, seguido de la impresión del segundo campo de todas las líneas.

#### Procesamiento por Archivo

Podemos realizar operaciones específicas para cada archivo en conjunto, por ejemplo, calcular estadísticas separadas para cada archivo.

Ejemplo:
```awk
{
    suma += $1  # Acumula el primer campo
    contador++  # Incrementa el contador
}
END {
    print "Promedio:", suma / contador
}
```

En este ejemplo, se calcula el promedio del primer campo en cada archivo por separado y se imprime al final.

El procesamiento de múltiples archivos en AWK nos brinda la capacidad de trabajar con conjuntos de datos más amplios y variados. Podemos realizar operaciones que involucren la combinación, comparación y análisis de información de diferentes fuentes. Al aprovechar esta funcionalidad, podemos abordar escenarios más complejos de procesamiento de datos de manera eficiente y efectiva.


### Ejemplos de Lectura y Escritura de Archivos

Para comprender cómo trabajar con archivos externos en AWK, veamos algunos ejemplos prácticos de lectura y escritura. Estos ejemplos nos mostrarán cómo utilizar AWK para manipular datos almacenados en archivos y generar nuevos archivos con resultados transformados.

#### Ejemplo 1: Lectura de Datos y Cálculos

Supongamos que tenemos un archivo con registros de temperaturas en grados Celsius y queremos convertir estas temperaturas a grados Fahrenheit y escribir los resultados en un nuevo archivo.

```awk
BEGIN {
    FS = ","  # Delimitador de campos
    OFS = "," # Delimitador de campos de salida
}
{
    # Cálculo de temperatura en Fahrenheit
    temperatura_fahrenheit = ($1 * 9/5) + 32

    # Escritura en el archivo de salida
    print $1, temperatura_fahrenheit > "temperaturas_fahrenheit.csv"
}
```

En este ejemplo, el programa AWK lee el archivo de temperaturas en Celsius, realiza el cálculo para convertir a Fahrenheit y escribe el resultado en un nuevo archivo llamado "temperaturas_fahrenheit.csv".

#### Ejemplo 2: Filtrado de Datos

Supangamos que tenemos un archivo con registros de ventas y queremos filtrar solo aquellos registros donde el valor de la venta supere un umbral y escribirlos en un nuevo archivo.

```awk
BEGIN {
    FS = ","  # Delimitador de campos
    OFS = "," # Delimitador de campos de salida
}
{
    if ($3 > 1000) {
        # Escritura en el archivo de salida
        print $0 > "ventas_altas.csv"
    }
}
```

En este ejemplo, el programa AWK lee el archivo de ventas, filtra los registros con ventas superiores a 1000 y escribe los registros seleccionados en un nuevo archivo llamado "ventas_altas.csv".

#### Ejemplo 3: Generación de Informe

Supongamos que tenemos varios archivos con registros de ventas por categoría y queremos generar un informe consolidado que incluya la suma de ventas por categoría.

```awk
BEGIN {
    FS = ","  # Delimitador de campos
    OFS = "\t" # Delimitador de campos de salida
}
{
    ventas_por_categoria[$1] += $2
}
END {
    for (categoria in ventas_por_categoria) {
        print categoria, ventas_por_categoria[categoria] > "informe_ventas.txt"
    }
}
```

En este ejemplo, el programa AWK procesa múltiples archivos de ventas por categoría, acumula las ventas por categoría y escribe un informe consolidado en el archivo "informe_ventas.txt".

Estos ejemplos ilustran cómo AWK puede leer, transformar y escribir datos en archivos externos. Al combinar patrones, acciones y el trabajo con archivos, podremos realizar una variedad de tareas de procesamiento de datos más avanzadas y completas.
