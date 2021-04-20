VPN_USER="user"
VPN_PASSWORD="password"
CONFIG_FILE='/path/to/file/client.ovpn'

sudo bash -c 'openvpn --config '"$CONFIG_FILE"' --auth-user-pass <(echo -e "'"$VPN_USER"'\n'"$VPN_PASSWORD"'")'
