#!/bin/bash

./ntg2mm.py test2.ntg mapa.mm && sed 's/>/>\n/g' < mapa.mm > mapa2.mm
