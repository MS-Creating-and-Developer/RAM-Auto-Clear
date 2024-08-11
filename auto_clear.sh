read -p "A cada quantos segundos? " temp_loop;
sudo -i watch -n $temp_loop "free -h; rm -r /tmp/; rm -r /var/tmp/;; rm -r /var/backup/; sudo apt autoclean; sudo apt autoremove; sudo apt update; sudo apt upgrade; /proc/sys/vm/drop_caches; swapoff -a; swapon -a; free -h "
