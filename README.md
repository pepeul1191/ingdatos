## Python Client

Instalación de Oracle Cli en Ubuntu, hay que descargar el cliente de oracle:

  https://www.oracle.com/database/technologies/instant-client/linux-x86-64-downloads.html

Luego copiar descarga y descomprimir:

    $ sudo mkdir -p /opt/oracle  
    $ cd /opt/oracle  
    $ sudo unzip /opt/oracle/instantclient-basic-linux.x64-19.8.0.0.0dbru.zip  

Instalar dependencia adicional

    $ sudo apt-get install libaio1
    $ vim ~/.bashrc  

En .bashrc agregar

    export LD_LIBRARY_PATH=/opt/oracle/instantclient_19_8:$LD_LIBRARY_PATH  

Grabar y reinicar bashrc

    $ source ~/.bashrc


Instalar y activar el ambiente virtual - Linux:

    $ sudo apt install python3-virtualenv python3-venv
    $ python3 -m venv ./env
    $ source env/bin/activate

Instalar y activar el ambiente virtual - Windows:

    > pip install virtualenv
    > virtualenv env
    > env\Scripts\activate.bat

Arrancar aplicación:

    $ cd <<carpeta-proyecto>>
    $ pip install -r requirements.txt
    $ mkdir static/uploads
    $ python main.py

---
Fuentes:
+ https://stackoverflow.com/questions/55823744/how-to-fix-cx-oracle-databaseerror-dpi-1047-cannot-locate-a-64-bit-oracle-cli
+ https://github.com/pepeul1191/manuales/tree/master/ptyhon-bottle