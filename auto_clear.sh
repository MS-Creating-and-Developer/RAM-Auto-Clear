#Definição do timer de limpeza da RAM
read -p "A cada quantos segundos? " temp_loop;

#Manutenção do básico
sudo apt autoremove #Remoção de arquivos mortos 
sudo apt autoclean #Limpeza de cache
sudo apt clean #Também limpeza de cache
sudo apt update #Atualização do programas e libs
sudo apt upgrade #Reposição de arquivos básicos que podem ter sido corrompidos ou deletados

#Manutenção do diretório /var
sudo journalctl --vacuum-time=7d
sudo rm -rf /var/log/*.gz
sudo truncate -s 0 /var/log/btmp
sudo truncate -s 0 /var/log/wtmp
sudo truncate -s 0 /var/log/lastlog
sudo rm -rf /var/tmp/*
sudo rm -rf /var/cache/*
sudo rm -rf /var/backups/*
sudo du -h /var | sort -rh | head -n 10

#Manuteção da RAM e do diretório /temp/
sudo -i watch -n $temp_loop "free -h -l -t; sync; echo 1 > /proc/sys/vm/drop_caches; sync; echo 2 > /proc/sys/vm/drop_caches; sync; echo 3 > /proc/sys/vm/drop_caches; swapoff -a; swapon -a; rmdir -p /tmp/*; rm -r /tmp/*"
