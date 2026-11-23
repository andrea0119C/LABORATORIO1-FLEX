# Laboratorio 1 - Flex

Ejercicios de análisis léxico desarrollados en Ubuntu utilizando Flex y GCC.

## Requisitos

- Linux Ubuntu
- Flex
- GCC

Instalar dependencias:

bash
sudo apt update
sudo apt install flex gcc -y


## Ejecución

Clonar el repositorio:

bash
git clone https://github.com/andrea0119C/LABORATORIO1-FLEX.git
cd LABORATORIO1-FLEX


Para ejecutar el ejercicio 1:

bash
cd UNO
flex uno.l
gcc lex.yy.c -o uno
./uno < entrada.txt


Para los demás ejercicios, ingresar a la carpeta correspondiente (DOS, TRES, CUATRO, etc), reemplazar el nombre del archivo .l y ejecutar los mismos comandos.

## Archivos

- .l: código fuente del analizador léxico.
- entrada.txt: datos de prueba.
- salida.txt: resultados de referencia.
