#II. Enunciado

#1. Instalar el paquete y emplear la librería
(library(gtools))

#2. Explicar brevemente la diferencia entre permutación y combinación y
#exprese las ecuaciones para calcular permutaciones y combinaciones.

#La permutación permite organizar los elementos considerando su
#orden. Por ejemplo, se tienen las primeras 10 letras del abecedario
#y se necesitan hacer subconjuntos de 3 letras.
#En el caso de la permutación, las siguientes mezclas de elementos serían
#distintas:
# A B C
# C B A
#En cambio, en la combinación como no importa el orden, estos mismos
#subconjuntos serían iguales.
# A B C
# C B A
# B C A, etc

#3. Buscar en la ayuda de R las funciones combinations y permutations y
#explique brevemente cómo funciona.

#combinations:
#Enumera las posibles combinaciones de un tamaño determinado
#de los elementos de un vector. 

#permutations:
#Enumera las posibles permutaciones.

#Cómo parámetros se tienen:
#- n: Tamaño del vector
#- r: Tamaño de los sub-vectores
#- v: Vector fuente
#- set: Bandera lógica que indica si se deberían eliminar o no
#       los duplicados del vector fuente.
#- repeats.allowed: Bandera lógica que indica si en los vectores construidos
#       deberían existir los valores duplicados.

#4. Calcular
#a. La cantidad de permutaciones posibles con n = 11 y r = 3 con y sin repetición.
#Con repetición
permutations(11, 3, repeats.allowed = TRUE)
#Sin repetición
permutations(11, 3, repeats.allowed = FALSE)

#b. Las combinaciones de largo 3 con las letras a, b, c, d y e con y sin repetición.
#Con repetición
c_con = combinations(4, 3, letters[1:4], repeats.allowed = FALSE)
c_con
#Sin repetición
c_sin = combinations(4, 3, letters[1:4], repeats.allowed = TRUE)
c_sin

#c. La cantidad de permutaciones y combinaciones con n = 39 y r = 25 sin repetición.
#Permutaciones
permutations(39, 25, repeats.allowed = FALSE)

#Combinaciones
combinations(39, 25, repeats.allowed = FALSE)

#5. Considere un problema de una vendedora viajera que debe recorrer 50 ciudades y
#volver al origen sin pasar dos veces por la misma ciudad. Considerando que solo existe
#una ruta óptima, si se selecciona una ruta al azar
#a. ¿Cuál es la probabilidad de que sea la ruta óptima?
#Permutación, debido a que si importa el orden.
#No se pueden repetir las ciudades.

prob_camino = 1/factorial(50)

#b. Si se selecciona una ruta al azar que es distinta a la anterior, ¿cuál es la 
#probabilidad de que sea la ruta óptima?

#6. Una bencinera tiene 5 funcionarios que deben limpiar el parabrisas de cada cliente
#que es atendido. Janet da servicio al 10% de los clientes y no limpia 1 de cada 20 
#parabrisas; Tomás da servicio al 60% de los clientes y no limpia 1 de cada 10 parabrisas;
#Georgina da servicio al 15% de los clientes y no limpia 1 de cada 10 parabrisas; 
#Pedro da servicio al 5% de los clientes y no limpia 1 de cada 20 parabrisas;
#Marcela da servicio al 10% de los clientes da servicio al 10% de los clientes y
#no limpia 3 de cada 5 parabrisas. 
#Si un cliente envía una nota de agradecimiento porque su parabrisas 
#quedó como nuevo.

#a. Exprese la ecuación con la que se puede resolver el problema.
P(Persona|Limpio) = P(Limpio|Persona) * P(Persona) / P(Persona1) * P(Limpio|Persona1) + ...

#b. ¿Cuál es la probabilidad de que haya sido atendido por Pedro?


#c. ¿Cuál es la probabilidad de que haya sido atendido por Janet o Georgina?

#d. Calcule la probabilidad de que haya sido atendido por Janet, Georgina, Tomás,
#Pedro o Marcela. ¿Qué se puede observar?

#7. De un grupo de 40 personas se quiere saber la opinión de 3 personas
#(seleccionadas al azar) acerca del apruebo o rechazo de la nueva constitución.
#Si se sabe que 22 personas aprueban y 18 rechazan ¿cuál es la probabilidad
#de que las 3 personas seleccionadas rechacen?
