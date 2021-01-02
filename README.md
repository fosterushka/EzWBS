# EzWBS - Easy Web Server
For stable work use 18.04 [WSL2 Inlcuded]
<br>
Git,NodeJs,PHP7.2, MYSQL 5.7, NGINX is already setup for local development ! 
<br>
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/idevmans/EzWBS)

<br>
###EzWBS ToDo list

- [ ] Version selection [PHP,MYSQL]
- [ ] Checking for Dependencies
- [ ] Choosing language [ru,eng,se,pl,tr]
- [ ] From SH to MAKE

#### Usage
Run in BASH
<br>
```curl -s https://raw.githubusercontent.com/idevmans/EzWBS/main/install.sh | sudo -E bash -```




FAQ:
- Fixing error when starting webserver <br>
```
No directory, logging in with HOME=/ <br>
mkdir: cannot create directory ‘//.cache’: Permission denied <br>
-su: 19: /etc/profile.d/wsl-integration.sh: cannot create //.cache/wslu/integration: Directory nonexistent
```

Edit file with sudo `/etc/profile.d/wsl-integration.sh` <br>
And right after line `WSL_INTEGRATION_CACHE=$HOME/.cache/wslu/integration`<br>
Paste this one :<br>
```
if [ "${HOME}" = "/" ]; then
  return
fi
```
