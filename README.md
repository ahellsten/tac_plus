# tacacs+ server based on [Marc Huber's source code](http://www.pro-bono-publico.de/projects/tac_plus.html)
# usage:
```sh
docker run -d --name tac_plus \
-v /path/to/tac_plus.conf:/etc/tac_plus.conf \
-v /path/to/logs/folder:/var/log/tac_plus
-p 49:49 dockerapp/tac_plus
```

# Sample config:
[Here](https://www.pro-bono-publico.de/projects/tac_plus.html#AEN161)

Note: replace mavis path with "/usr/lib/mavis/mavis_tacplus_passwd.pl"


# Links
[Docs](http://www.pro-bono-publico.de/projects/tac_plus.html)
