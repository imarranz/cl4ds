
## Fundamentos de AWK

En este apartado, nos sumergiremos en los fundamentos esenciales de AWK, el lenguaje de programación y herramienta de procesamiento de texto y datos tabulares. Comprender los conceptos básicos de AWK es crucial para sacar el máximo provecho de esta poderosa utilidad. Exploraremos la estructura fundamental de los comandos AWK, las nociones de patrones y acciones, así como las variables predefinidas que facilitan el procesamiento y manipulación de datos.

Dominar los fundamentos de AWK proporcionará la base necesaria para realizar operaciones de extracción, filtrado y transformación de datos de manera eficiente. A medida que avancemos, estaremos mejor equipados para escribir scripts y comandos más avanzados que se adapten a nuestras necesidades específicas. Ya sea buscando manipular datos en archivos de registro, generar informes personalizados o automatizar tareas repetitivas, los fundamentos de AWK nos brindarán la confianza para hacerlo de manera efectiva.

### Estructura básica de un comando AWK

Un comando AWK se compone de tres elementos esenciales: patrones, acciones y reglas. La combinación de estos elementos define cómo AWK procesará y manipulará los datos en un archivo. A continuación, describiremos cada uno de estos componentes y cómo se interrelacionan en la estructura de un comando AWK.

#### Patrones

Los patrones son condiciones que determinan qué registros o líneas serán procesados por AWK. Pueden ser expresiones regulares, comparaciones numéricas o cualquier otro criterio que defina qué registros deben ser seleccionados para su procesamiento. Los patrones son opcionales, lo que significa que un comando AWK puede no tener patrones y, en ese caso, todas las líneas serán procesadas.

Ejemplo de patrones:

- `/patrón/`: Selecciona las líneas que coinciden con la expresión regular "patrón".
- `$1 > 10`: Selecciona las líneas donde el primer campo es mayor que 10.

#### Acciones

Las acciones son las instrucciones que se ejecutarán en los registros que cumplan con el patrón especificado. Pueden ser simples operaciones de impresión, asignaciones de variables, cálculos, y mucho más. Las acciones se encierran entre llaves `{}` y se ejecutan en el orden en que aparecen en el comando AWK.

Ejemplo de acciones:

- `{print $2}`: Imprime el segundo campo del registro actual.
- `{total += $3}`: Suma el valor del tercer campo al acumulador `total`.

#### Reglas

Una regla en AWK combina un patrón y una acción, especificando qué hacer con los registros que cumplan con el patrón. La regla se construye colocando el patrón seguido de la acción entre llaves. AWK evalúa cada regla en secuencia y ejecuta la acción correspondiente para los registros que coincidan con el patrón.

Ejemplo de reglas:

- `/error/ {print $0}`: Imprime todas las líneas que contienen la palabra "error".
- `$2 > 50 {print $1, $2 * 2}`: Si el segundo campo es mayor que 50, imprime el primer campo y el doble del valor del segundo campo.

#### Ejemplo de Comando AWK Completo

Considera el siguiente comando AWK:

```awk
/ventas/ {total += $3}
/fin/ {print "Total de ventas:", total}
```

En este ejemplo, dos reglas se definen. La primera regla suma el valor del tercer campo para todas las líneas que contienen "ventas" en ellas. La segunda regla imprime el mensaje "Total de ventas:" seguido del valor acumulado de las ventas cuando se encuentra la palabra "fin" en una línea.

La estructura básica de un comando AWK se basa en la combinación de patrones y acciones para procesar y manipular los datos según tus necesidades. Con esta comprensión, estarás listo para comenzar a trabajar con registros y campos en archivos de texto utilizando AWK.


### Patrones y Acciones

La esencia de AWK radica en la combinación de patrones y acciones para seleccionar, procesar y manipular datos en archivos de texto. Los patrones determinan qué registros serán procesados, mientras que las acciones especifican qué hacer con esos registros. Esta combinación permite un control detallado y flexible sobre el procesamiento de datos. En este subapartado, exploraremos en profundidad cómo trabajar con patrones y acciones en AWK.

#### Patrones

Los patrones son condiciones que determinan qué registros serán seleccionados para su procesamiento. Pueden ser expresiones regulares, comparaciones numéricas, o incluso condiciones más complejas. Los registros que cumplen con el patrón serán procesados por las acciones asociadas.

Ejemplos de patrones:

- `/error/`: Selecciona los registros que contienen la palabra "error".
- `$2 > 100`: Selecciona los registros donde el segundo campo sea mayor que 100.
- `/^Inicio/`: Selecciona los registros que comienzan con la palabra "Inicio".

#### Acciones

Las acciones definen las operaciones que se realizarán en los registros seleccionados por los patrones. Pueden ser simples, como la impresión de campos, o más complejas, como cálculos y manipulaciones avanzadas de datos. Las acciones se ejecutan en el orden en que aparecen en el programa AWK y se aplican a los registros que coinciden con el patrón correspondiente.

Ejemplos de acciones:

- `{print $1, $3}`: Imprime el primer y tercer campo del registro actual.
- `{total += $2}`: Acumula el valor del segundo campo en la variable `total`.
- `{if ($4 > 0) print "Positivo"}`: Si el cuarto campo es mayor que cero, imprime "Positivo".

#### Combinación de Patrones y Acciones

La combinación de patrones y acciones permite una flexibilidad excepcional en el procesamiento de datos. Cada vez que un registro coincide con el patrón definido, las acciones asociadas se ejecutan en ese registro. Esto permite realizar transformaciones, filtrados y análisis específicos de manera eficiente y efectiva.

Ejemplo de patrón y acción:

```awk
/ventas/ {total += $3}
```

En este ejemplo, cada vez que un registro contiene la palabra "ventas", se suma el valor del tercer campo al acumulador `total`.

En resumen, la interacción entre patrones y acciones es la base del procesamiento de datos con AWK. A través de esta combinación, se pueden definir de manera precisa qué datos queremos manipular y cómo deseamos manipularlos. A medida que profundizamos en el uso de AWK, dominar esta relación te permitirá realizar tareas de procesamiento de datos de manera eficiente y personalizada.

### Variables predefinidas en AWK

AWK proporciona un conjunto de variables predefinidas que simplifican el acceso a información clave durante el procesamiento de datos. Estas variables contienen detalles sobre el registro actual, campos individuales y otros aspectos del entorno de ejecución de AWK. Utilizar estas variables puede agilizar el desarrollo de comandos y scripts y hacer que el procesamiento de datos sea más eficiente. A continuación, exploraremos algunas de las variables predefinidas más comunes en AWK.

#### Variables de Registro

- `$0`: Contiene todo el registro actual. Es decir, la línea completa que está siendo procesada.
- `$1`, `$2`, `$3`, ...: Contienen los campos individuales del registro actual. El número especifica el índice del campo (empezando desde 1).

#### Variables Numéricas

- `NF`: Número de campos en el registro actual (Número de Fields). Es útil para iterar a través de todos los campos.
- `NR`: Número de registro actual (Número de Record). Se incrementa a medida que se procesan registros.

#### Variables de Separadores

- `FS`: Separador de campos (Field Separator). Define el carácter que separa los campos en un registro. El valor por defecto es el espacio en blanco.
- `OFS`: Separador de campos de salida (Output Field Separator). Define el carácter que se utiliza para separar los campos al imprimir. El valor por defecto es un espacio.
- `RS`: Separador de registros (Record Separator). Define el carácter que separa los registros en el archivo de entrada. El valor por defecto es la nueva línea.

#### Variables de Formato de Salida

- `CONVFMT`: Formato de conversión numérica. Define cómo se muestran los números en la salida. El valor por defecto es `%.6g`.

Estas son solo algunas de las variables predefinidas en AWK. Podemos utilizarlas para acceder y manipular datos de manera más efectiva durante el procesamiento. Al comprender y aprovechar estas variables, podrás escribir comandos y scripts más poderosos y precisos.

Las variables predefinidas en AWK están ahí para facilitar nuestro trabajo y mejorar la eficiencia del procesamiento de nuestros datos. Al combinar estas variables con patrones y acciones, tendremos un conjunto sólido de herramientas para llevar a cabo una amplia variedad de tareas de manipulación y análisis de datos.
