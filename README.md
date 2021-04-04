# tacacs+ server based on [Marc Huber's source code](http://www.pro-bono-publico.de/projects/tac_plus.html)
# usage:
```sh
docker run -d --name tac_plus \
-v /path/to/tac_plus.conf:/etc/tac_plus.conf \
-v /path/to/logs/folder:/var/log/tac_plus
-p 49:49 artiz/tac_plus:ubuntu
```

# Sample config:
[Here](https://www.pro-bono-publico.de/projects/tac_plus.html#AEN161)

Notes:
- Replace mavis path with "/usr/lib/mavis/mavis_tacplus_passwd.pl"
- Generate cypted password to config file with "openssl passwd -crypt <password>"

# Links
[Docs](http://www.pro-bono-publico.de/projects/tac_plus.html)
