#!/usr/bin/python3
import requests
from time import sleep
from random import uniform, randint
# Generador de trafico para subir informacion a firebase
# Parametros enviados a travez de la URL
for i in range(1, 50):
    url = f'http://45.79.41.19/cgi-bin/fs.py?idd={randint(1,5)}&latitude={uniform(-90,90)}&longitude={uniform(-180,180)}'
    print(url)
    r = requests.get(url)
    print(r.text)
    sleep(0.5)
