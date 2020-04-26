#!/usr/bin/env bash

# <bitbar.title>IP Address</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>TAKAHASHI Shuuji</bitbar.author>
# <bitbar.author.github>shuuji3</bitbar.author.github>
# <bitbar.desc>Display the current IP address by using ifconfig.io.</bitbar.desc>
# <bitbar.image></bitbar.image>
# <bitbar.dependencies>bash</bitbar.dependencies>

# BitBar IP Address plugin

ip=$(curl ifconfig.io 2> /dev/null)

if [[ "${ip}" = "" ]]; then
    echo "🌏 via SOCKS5"
else
    echo "${ip}"
fi
echo "---"
echo "Refresh | refresh=true"
