# EzWBS - Easy Web Server
Suitable for WSL
For different versions of mysql highlt recommend you to use docker
<br>
Git,NodeJs,PHP, MYSQL NGINX is already setup for local development ! [Env for Laravel developer]
<br>
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/idevmans/EzWBS)

<br>
###EzWBS ToDo list

- [ ] Version selection [PHP,MYSQL]
- [x] Easy NODE.JS version management with [NVM](https://github.com/nvm-sh/nvm)
- [ ] Checking for Dependencies
- [ ] From SH to MAKE
- [ ] Support for Golang,Java,Python web frameworks
- [ ] Auto configuration everysingle config by bash
- [ ] Standlone app such as OpenServer for Windows but Linux and OS Version
- [x] Flexible settings
- [x] Docker - At this moment Docker should work with wsl2 out of the box
- [x] Aliases (short commands)
- [ ] Custom webdir (default: /var/www/all/$anywebsitename.localhost)
- [x] No need to change hosts file.
- [x] Support for Mac m1 (Use Laravel Valet)

#### Usage
Run in BASH
<br>
```
1. git clone https://github.com/idevmans/EzWBS.git
2. open dir with cloned project
3. chmod +x install.sh
4. sh install.sh Enjoy
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

#Shortcut cmds
```
webhelp - print all available commands
webstart - web server start
webstop - webserver off
off - wsl2 shutdown
phpcv - change cli php version
cdws - open web root foolder
composer[phpVersion]v[versionComposer] at this moment hardcoded
example: composer74v2
```


#Add .ssh to env and pass key trough the SSH (.bashrc)
```
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
     echo "Initialising new SSH agent..."
     /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
     echo succeeded
     chmod 600 "${SSH_ENV}"
     . "${SSH_ENV}" > /dev/null
     /usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
     . "${SSH_ENV}" > /dev/null
     #ps ${SSH_AGENT_PID} doesn't work under cywgin
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
         start_agent;
     }
else
     start_agent;
fi
```
