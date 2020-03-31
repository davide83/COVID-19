#!/bin/bash

############## 
# REQUIREMENTS
# csvkit - sudo pip install csvkit

############## 
# Setup your workspace
#DB_PATH=databases/dpc-covid19-ita_db.sqlite3


#####################
# Insert the data

## Insert the andamento_nazionale data
csvsql dati-andamento-nazionale/dpc-covid19-ita-andamento-nazionale.csv  \
    --db sqlite:///$DB_PATH --insert --no-create \
    --tables andamento_nazionale
csvsql dati-regioni/dpc-covid19-ita-regioni.csv  \
    --db sqlite:///$DB_PATH --insert --no-create \
    --tables dati_regioni    
csvsql dati-province/dpc-covid19-ita-province.csv  \
    --db sqlite:///$DB_PATH --insert --no-create \
    --tables dati_province
csvsql note/dpc-covid19-ita-note-it.csv  \
    --db sqlite:///$DB_PATH --insert --no-create \
    --tables note_it
csvsql note/dpc-covid19-ita-note-en.csv  \
    --db sqlite:///$DB_PATH --insert --no-create \
    --tables note_en

exit 0