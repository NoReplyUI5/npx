echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches
docker rmi $(docker images -q)
sudo fc-cache -f -v
clear
free -w -h
df -h /
