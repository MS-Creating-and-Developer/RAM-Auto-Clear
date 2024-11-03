@@ -1,5 +1,21 @@
# Definindo o host para tráfego não direcionado
read -p " Qual é o gateway?: " route_ip ;

read -p " Qual o tipo de rede? 1- wlp2s0, 2- enx5c531073e79c, 3- tun0 ou 4- tun1? " opt_web ;

if [[ " $opt_web "  -eq 1 ]] ;  então   # Note as aspas duplas e o espaço correto
    tipo_web= " wlp2s0 "
elif [[ " $opt_web "  -eq 2 ]] ;  então
    tipo_web= " enx5c531073e79c "
elif [[ " $opt_web "  -eq 3 ]] ;  então
    tipo_web= " tun0 "
elif [[ " $opt_web "  -eq 4 ]] ;  então
    tipo_web= " tun1 "
outro
    echo  " Resposta inválida "
sim

sudo ip route add default via $route_ip dev $web_type

# Definição do timer de limpeza da RAM
read -p " A cada quantos segundos? " temp_loop ;
@@ -24,18 +40,3 @@ sudo du -h /var | classificar -rh | cabeça -n 10

# Manuteção da RAM e do diretório /temp/
sudo -i watch -n $temp_loop  " livre -h -l -t; sincronizar; eco 1 > /proc/sys/vm/drop_caches; sincronizar; eco 2 > /proc/sys/vm/drop_caches; sincronizar; eco 3 > /proc/sys/vm/drop_caches; swapoff -a; swapon -a; rmdir -p /tmp/*; rm -r /tmp/* "
