# PortScanner
Podrás escanear todos puertos de un dominio o dirección IP 

# Linkedin
<a href="https://www.linkedin.com/in/rafael-peiro-calvet/"><img src="https://i.postimg.cc/8zsFGvXV/logo.jpg"></a>

# Requisitos y pasos a seguir

**Actualizas los paquetes**

sudo apt-get update

<img src="https://i.postimg.cc/15jyBXHq/01.jpg">

**Instalas git**

sudo apt-get install git

<img src="https://i.postimg.cc/HnSdfk1F/02.jpg">

**Accedes al Desktop**

<img src="https://i.postimg.cc/0Q080CWk/03.jpg">

**Te descargas el repositorio de PortScanner**

sudo git clone https://github.com/r4p3c4/PortScanner.git

<img src="https://i.postimg.cc/c1TxKXtT/04.jpg">

**Haces un ls del directorio actual**

<img src="https://i.postimg.cc/Y9HrFPxD/05.jpg">

**Al descargarlo veras un candado en la carpeta que significa que no eres el propietario de la carpeta**

<img src="https://i.postimg.cc/BQ6q2Hx3/06.jpg">


**Lo único que tienes que hacer es cambiar el propietario y grupo de propietarios de la carpeta Portscanner por tu nombre de usuario.**

**Al utilizar la opción -R te permite cambiar los propietarios de todos los archivos y subdirectorios dentro de un directorio específico.**

<img src="https://i.postimg.cc/Lsf4nSjZ/07.jpg">

**Ahora ya se ve que no hay ningún candado en la carpeta**

<img src="https://i.postimg.cc/hv4Ky769/08.jpg">

**Accedes a la carpeta PortScanner y listas el contenido de la carpeta**

<img src="https://i.postimg.cc/ryhTys7P/09.jpg">

**Le das permisos de ejecución al archivo Portscanner.sh**

<img src="https://i.postimg.cc/6qQNLx4c/010.jpg">

**Listas el contenido de la carpeta actual y verás que ha cambiado de color a verde.**

<img src="https://i.postimg.cc/PJFnSVmj/011.jpg">

**Si pones solo el nombre del programa, te va a indicar cuales son los argumentos necesarios para que funcione correctamente el programa **

<img src="https://i.postimg.cc/28MfvJkd/012.jpg">

**Si pones una IP o un dominio al azar que no exista, te va a devolver el siguiente mensaje**

<img src="https://i.postimg.cc/vHcs4MsH/013.jpg">

<img src="https://i.postimg.cc/rw429JsB/014.jpg">

**Ahora si pones una IP o un dominio existente si que va a funcionar correctamente, en mi caso estoy escaneando en una maquina virtual a la maquina Metasploitable 3 Windows Server 2008 R2**

<img src="https://i.postimg.cc/rpC6BwSg/015.jpg">

**Una vez a terminado el escaneo de todos los puertos va a generar un csv con nombre del argumento que hayas puesto para escanear**

<img src="https://i.postimg.cc/5tMdKCF6/016.jpg">

**Visualizas el contenido del archivo generado**

<img src="https://i.postimg.cc/wv0CB44m/017.jpg">




