Como ejecutar la herramienta
01. Ejecute el script SQL, el cual se encuentra en la carpeta “ScriptBD” en un motor de bases de datos de SQL Server.
02. Abra la solución en Visual Studio (preferiblemente el 2017).
03. Establezca como proyecto de inicio el proyecto por nombre “FrameworkAnaliticaVisual”.
04. Ejecute la solución y establezca lo que se le solicita en el “Wizard”.
05. En el segundo paso, establezca las tablas de su preferencia para generar las vistas.
06. En el tercer paso, seleccione los campos de las columnas con los campos de las vistas que desea asociar.
07. Al establecer el directorio, seleccione el directorio raíz de la solución, a continuación, seleccione el archivo en la siguiente ubicación “\CanvasViews\Models\clsVista.cs”.
08. Una vez seleccionado, finalice con el “Wizard”, el cual le indicara si la clase se ha escrito correctamente.
09. Detenga la ejecución del programa, a continuación, establezca el proyecto “CanvasViews” como proyecto de inicio.
10. Por último ejecute el proyecto, y este le mostrara las visualizaciones con los datos correspondientes a la selección previa.

NOTA: en el primer paso de establecer la conexión a base de datos, introduzca las credenciales de la base de datos anteriormente creada.