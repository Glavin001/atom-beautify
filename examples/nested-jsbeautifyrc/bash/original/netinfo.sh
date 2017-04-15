# Displays information about the network configuration
                  netinfo() {
  printf '--------------- Network Information ---------------\n'
  /sbin/ifconfig | awk /'inet addr/ {print $2}'
  /sbin/ifconfig | awk /'Bcast/ {print $3}'
  /sbin/ifconfig | awk /'inet addr/ {print $4}'
  /sbin/ifconfig | awk /'HWaddr/ {print $4,$5}'
  myIP =$(wget -qO- http://ipecho.net/plain)
  printf 'Public: %s\n' "$myIP"
  printf '---------------------------------------------------'
}
