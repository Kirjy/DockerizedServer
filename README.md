# Dockerized Server
A suite of Docker containers that can communicate with each other.

This repository contains my current server configuration. 
It works on N100 servers or any other server. With some slight changes to the MariaDB containers, it can work on 32-bit, but I wouldn't recommend it as it will need old versions to work.

I'm not a Docker expert and I may have made some mistakes. So please, feel free to report any issues or contact me with any remarks.

It provides a clean installation of:
 - Nginx Proxy Manager as a reverse proxy to manage external access to your installation through port 443 (HTTPS) with a nice interface. NginxProxyManager comes up with OpenAppSec which is a WAF to avoid random injection attempts to be sent to containers.
 - A Wireguard container acting as a server. This can replace the Nginx proxy if you don't want to expose your server online. Wireguard will be safer as you can chose the port to open and as it's in UDP, if the authentication fails, the server won't even answer.
   This container must be launched first as it will also create the frontend network used by other containers.
 - FileBrowser for personal file sharing and management. This comes up as the Nextcloud replacement which was too heavy and too buggy for my needs.
 - A Home Assistant container which manages the whole house domotic. It used to be Home Assistant + Z2M + Mosquitto but that is not useful anymore due to the Home Assistant Conbee integration
 - A Portainer container to have an interface to easily manage your containers.
 - A WatchTower to update regularly the containers.
 - Photoprism in order to manage all the photos.
 - A Pyload installation to enable easy downloads on the networkserver's share.
 - A Transmission interface to easily download torrents on a local Samba share while not at home.

Note that if you are looking in the "old" folder, you can retrieve my old containers that work as they are defined but that I'm no longer using.
Also note the game folder that hosts my game's servers.

Please note that any sensitive information is described as ${MY_VARIABLE}. This information is stored in a .env file that is stored in the compose.yml folder.
