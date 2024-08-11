read -p "A cada quantos segundos? " temp_loop;
sudo -i watch -n $temp_loop "free -h -l -t; sync; echo 1 > /proc/sys/vm/drop_caches; sync; echo 2 > /proc/sys/vm/drop_caches; sync; echo 3 > /proc/sys/vm/drop_caches; swapoff -a; swapon -a; rm -r /temp/*"
