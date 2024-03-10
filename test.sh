#!/bin/bash

# Ścieżka do JDK
# JAVA_HOME_PATH="/opt/zulu21.32.17-ca-jdk21.0.2-linux_aarch64"

# # Sprawdzenie, czy plik ~/.bashrc istnieje i dodanie linii, jeśli nie istnieje
# if [ -f ~/.bashrc ]; then
#     # Sprawdzenie, czy linia nie istnieje już w pliku
#     if ! grep -qF "export JAVA_HOME=$JAVA_HOME_PATH" ~/.bashrc; then
#         echo "export JAVA_HOME=$JAVA_HOME_PATH" >> ~/.bashrc
#         echo "Zmienna JAVA_HOME została dodana do pliku ~/.bashrc."
#     else
#         echo "Zmienna JAVA_HOME już istnieje w pliku ~/.bashrc."
#     fi
# else
#     echo "Plik ~/.bashrc nie istnieje."
# fi


# Nazwa pliku docelowego
compressed_file="xyz.tar.gz"

# Lista plików do skompresowania
files=("hadoop.sh" "java.sh" "main.sh" "PySpark.sh")

# Sprawdzanie, czy plik docelowy już istnieje i usuwanie go, jeśli tak
if [ -e "$compressed_file" ]; then
    rm "$compressed_file"
fi

# Tworzenie archiwum tar z podanych plików
tar -czvf "$compressed_file" "${files[@]}"