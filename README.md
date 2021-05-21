# EzWBS - Easy Web Server
For stable work use 18.04 [WSL2 Inlcuded]
<br>
Git,NodeJs,PHP, MYSQL 5.7, NGINX is already setup for local development ! [Env for Laravel developer]
<br>
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/idevmans/EzWBS)

<br>
###EzWBS ToDo list

- [ ] Version selection [PHP,MYSQL]
- [x] Easy NODE.JS version management with [NVM](https://github.com/nvm-sh/nvm)
- [ ] Checking for Dependencies
- [ ] Choosing language [ru,eng,se,pl,tr]
- [ ] From SH to MAKE
- [ ] Support for Golang,Java,Python web frameworks
- [ ] Auto configuration everysingle config by bash
- [ ] Standlone app such as OpenServer for Windows but Linux and OS Version
- [ ] Flexible settings
- [x] Docker - At this moment Docker should work with wsl2 out of the box

#### Usage
Run in BASH
<br>
```git clone https://github.com/idevmans/EzWBS.git
open dir with cloned project
chmod +x install.sh
sh install.sh Enjoy
```

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
To get access from windows explorer (file manager) paste this in explorer <br>
```
where $ver - your version
\\wsl$\Ubuntu-$ver
```
