# **Tipos de kernel y sus diferencias**
Existen diferentes tipos de kernel para los diferentes tipos de sistemas operativos existentes, de acuerdo a las concideraciones arquitectonicas del núcleo se puede categorizar en:

* Microkernel o micronúcleo
* Kernel monolítico
* Kernel híbrido

## **Microkernel**
Son kernels pequeños que fueron compilados con las necesidades mas básicas del sistema operativo, brindan beneficios en cuanto a portabilidad, seguridad y capacidad para adaptarse. Aunque la velocidad de la maquina pueda verse afectada en las transacciones del hardware y los tiempos de espera del procesador para obtener información.

En caso de fallo no paralisa todo el sistema operativo aunque en la actualidad no hay ningun sistema operativo con microkernel.

## **Kernel monolítico**
Tienen un núcleo grande y complejo que engloba todos los servicios del sistema, esta programado de forma no modular y tiene mayor rendimiento que un microkernel.

Para realizarle modificaciones se requiere la recompilación del núcleo y el reinicio del sistema para aplicar los nuevos cambios.

El núcleode Linux es monolitico, por lo que los programas tienen mayor acceso al hardware.  

## **Kernel híbrido**
Es la combinacion entre el kernel monolítico y el microkernel, estas arquitecturas se utilizan dentro de las computadoras por medio de los sistemas operativos. Incluyen código extra con el objetivo de mejorar el rendimiento.

Los controladores de dispositivos y las extensiones al sistema operativo se pueden cargar y descargar directamente con módulos mientras que el sistema sigue funcionando sin interrupciones. Tambien los controladores pueden ser detenidos momentáneamente por actividades mas importantes.

# **User vs Kernel Mode**
El procesador cambia entre los dos modos dependiendo del tipo de código que se este ejecutando en el procesador. Las aplicaciones se ejecutan en modo usuario y los componentes principales del sistema operativo se ejecutan en modo kernel.


|**User Mode**|**Kernel Mode**|
|---------|-----------|
|En el modo usuario se crea un proceso para cada aplicacion lanzada, asignandole un espacio de direccion virtual privado para que la aplicacion no pueda alterar los datos que pertenezcan a otras aplicaciones. Y si una aplicación falla el bloqueo se limita a esa aplicación. Otras aplicaciones y el SO no se ven afectadas.| Todo el código que se ejecuta en el modo kernel comparte un espacio de dirección virtual. Entonces un controlador de modo núcleo no esta aislado de otros controladores y del sistema operativo. Si un controlador en modo núcleo falla, todo el sistema operativo se bloquea.|

