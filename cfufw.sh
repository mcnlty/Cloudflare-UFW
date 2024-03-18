#!/usr/bin/env bash

cloudflareip=$(curl -sw '\n' https://www.cloudflare.com/ips-v{4,6}); for ip in $cloudflareip; do ufw allow proto tcp from "$ip" to any port 443 comment 'Cloudflare IP Address'; done

ufw reload
