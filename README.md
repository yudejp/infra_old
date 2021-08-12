# config
📎 Server configuration

## Tested environment
* Arch Linux [x86_64] for Docker Compose, fstab, cron, systemd, Samba.
* Raspbian GNU/Linux 10 (buster) [armv7l] for HAProxy.

## Table of contents
### Docker Compose (`docker-compose/`)
#### mirakurun-epgstation
* Please refer to [this repository](https://github.com/yude/docker-mirakurun-epgstation)

### HAProxy (`haproxy/`)
#### Install
The content does not include all of configurations (e.g. default HAProxy's configuration).\
Don't replace all of `haproxy.cfg`, just ADD to the file.

### fstab (`fstab`)
#### Install
Add content of `fstab` into your system's `/etc/fstab`.

### cron (`crontab`)
#### Install
Run `crontab -e` and paste content of `crontab` into opened file.

### systemd (`systemd/`)
#### Install
Copy the files in `systemd` into `/etc/systemd/system`.

### Samba (`smb.conf`)
#### Install
Replace your system's `/etc/samba/smb.conf` with `smb.conf` (in this repository).

## License
This repository is provided under the MIT License.