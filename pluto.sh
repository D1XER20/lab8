#!/bin/bash

# Pobierz datę utworzenia
creation_date=$(date)

# Pobierz ilość dostępnej pamięci
available_memory=$(free -m | awk 'NR==2 {print $7}')

# Zapisz dane do pliku "info.log"
echo "Data utworzenia: $creation_date" > /logi/info.log
echo "Dostępna pamięć: $available_memory MB" >> /logi/info.log
``
#Skrypt pobiera aktualną datę używając polecenia date i ilość dostępnej pamięci przy użyciu polecenia "free -m | awk 'NR==2 {print $7}'".