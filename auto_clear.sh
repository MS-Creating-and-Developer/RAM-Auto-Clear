#!/bin/bash


read -p "A cada quantos segundos? " temp_loop

while true; do
    # Exibe informações sobre a memória
    free -h -l -t
    
    # Sincroniza dados
    sync
    
    # Limpa caches
    echo 1 > /proc/sys/vm/drop_caches
    sync
    echo 2 > /proc/sys/vm/drop_caches
    sync
    echo 3 > /proc/sys/vm/drop_caches
    
    # Remove conteúdo dos diretórios especificados
    rm -rf /temp/*
    
    # Aguarda o intervalo especificado
    sleep $temp_loop
done
