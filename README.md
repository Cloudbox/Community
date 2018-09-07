# Community Repo

Community Wiki and Repo for addons


## Visit the Wiki:

https://github.com/Cloudbox/Community/wiki

## Clone this repo:

```bash
git clone https://github.com/Cloudbox/Community.git ~/community
```

## Run Ansible role:

```bash
cd ~/community
sudo ansible-playbook community.yml --tags myrole
```
## Added roles:

**calibre-rdp** - Media path set to /Media/Books\
**calibre-web** - Loads opt/calibre  (uses calibre-rdp db)\
**lazylibrarian** - Loads opt/calibre  (uses calibre-rdp db)\
**logarr**\
**monitorr**\
**airsonic** - Music path set to /Media/Music,Podcasts to /Media/Podcasts, Playlists to /Media/Playlists\
**radarr1080** - Additional Radarr for 1080 Remux -- Media path set to /Media/Movies1080Remux\
**sonarr1080** - Additional Sonarr for 1080 Remux -- Media path set to /Media/TV1080Remux\
**sonarrv3** - Sonar phantom (v3) branch based role\
**[deluge](../../wiki/Deluge)** - Deluge torrent client\
**mylar** - automated comic book downloader
