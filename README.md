# tacacs+ server based on [Marc Huber's source code](http://www.pro-bono-publico.de/projects/tac_plus.html)
# usage:
```sh
docker run -d --name tac_plus \
-v /path/to/tac_plus.conf:/etc/tac_plus.conf \
-p 49:49 dockerapp/tac_plus
```
