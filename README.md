# Community Repo

Community Repository for Unofficial Cloudbox Add-ons

## Requirements

- [Cloudbox](https://github.com/Cloudbox/Cloudbox/)

<<<<<<< HEAD
## Clone Community Repository

```bash
curl -s https://cloudbox.works/scripts/cmrepo.sh | bash >/dev/null 2>&1; cd ~/community
```

## Switch to develop branch (optional)

```bash
git checkout develop
```


## Setup Password File (if required)

If you have setup an Ansible vault password file for Cloudbox, you will need to add its location to the Community Repo folder's `ansible.cfg` file.

1. Open `~/community/ansible.cfg`

   ```bash
   nano ~/community/ansible.cfg
   ```

2. Add entry for `vault_password_file` pointing to the path of your Cloudbox vault password file.

   ```ini
   vault_password_file = ~/.ansible_vault
   ```

3. Should now look like this:

   ```ini
   [defaults]
   inventory = ~/cloudbox/inventories/local
   callback_whitelist = profile_tasks
   command_warnings = False
   retry_files_enabled = False
   hash_behaviour = merge
   roles_path = ~/cloudbox/roles
   vault_password_file = ~/.ansible_vault
   ```

1. Save and exit: <kbd class="platform-all">Ctrl + X</kbd> <kbd class="platform-all">Y</kbd> <kbd class="platform-all">Enter</kbd>


## Usage

```bash
sudo ansible-playbook community.yml --tags <ROLENAME>
```

See [wiki](https://github.com/Cloudbox/Community/wiki) for setup guides.


## Roles
Please note some roles are only available in develop.

- ***[**arrX](../../wiki/***arrX-(Sonarr-Radarr-Bazarr))** - Create multiple Sonarr/Radarr/Bazarr roles
- **airsonic**
- **beets**
- **[bitwarden](../../wiki/Bitwarden)** - [Bitwarden](https://bitwarden.com/) self-hosted server.
- **bookstack**
- **calibre-rdp** - Media path set to `/Media/Books`
- **calibre-web** - Loads opt/calibre  (uses calibre-rdp db)
- **[deluge](../../wiki/Deluge)** - Deluge torrent client
- **embystats**
- **funkwhale**
- **gazee** - comic book reader
- **[goplaxt](../../wiki/Goplaxt)** - [goplaxt](https://github.com/XanderStrike/goplaxt) Plex/Trakt Scrobbler
- **invoiceninja**
- **jellyfin** - [jellyfin](https://github.com/jellyfin/jellyfin) emby fork
- **kitana** - A responsive Plex plugin web frontend
- **lazylibrarian** - (uses calibre-rdp db)
- **logarr**
- **[mediabutler](../../wiki/Mediabutler)** - Discord bot
- **[mellow](../../wiki/Mellow-Discord-Bot)** - Discord Bot
- **monitorr**
- **myjdownloader**
- **mylar** - automated comic book downloader
- **[qbittorrent](../../wiki/qBitorrent)** - qBitorrent torrent client
- **radarr1080** - Additional Radarr
- **radarrX** - Similar to [sonarrX](../../wiki/SonarrX) but for radarr, to create multiple roles
- **sonarr1080** - Additional Sonarr
- **sonarrv3** - Sonar phantom (v3) branch based role
- **[sonarrX](../../wiki/SonarrX)** - Experimental Sonarr v3 role to create multiple roles
- **subsonic**
- **telly** - Set version in telly.yml. Choices are `1.0`, `1.1`, and `1.5`. These can be quoted or non-quoted. Includes Telly 1.0 (Needs settings from `telly10` section in `telly.yml`), 1.1 dev branch (Needs settings from the `telly11` section  in  `telly.yml`) and 1.5 unsupported alpha build (does not need any settings from `telly.yml`).
- **[Wordpress](../../wiki/Wordpress)** - Wordpress deployment
- **xteve**
=======
## Install

- [Install](https://github.com/Cloudbox/Community/wiki/Install)

## Wiki

- [Wiki](https://github.com/Cloudbox/Community/wiki)

## Roles

- **[arrX](../../wiki/arrX)** - Create multiple Sonarr/Radarr/Bazarr Docker containers.
- **airsonic**
- **[alltube](../../wiki/alltube)** - [alltube](https://github.com/Rudloff/alltube) HTML GUI for youtube-dl.
- **[beets](../../wiki/beets)** - [Beets](http://beets.io/) Music library manager and MusicBrainz tagger.
- **[bitwarden](../../wiki/Bitwarden)** - [Bitwarden](https://bitwarden.com/) Installs a self-hosted Bitwarden CE instance.
- **[bookstack](../../wiki/Bookstack)** - [BookStack](https://www.bookstackapp.com/) Self-hosted platform for organising and storing information.
- **[calibre-rdp](../../wiki/Calibre-RDP-and-Calibre-WEB)** - [Calibre-RDP](https://github.com/cgspeck/docker-rdp-calibre) Media path set to `/Media/Books` - a web app providing a clean interface for browsing, reading and downloading eBooks using an existing Calibre database.
- **[calibre-web](../../wiki/Calibre-RDP-and-Calibre-WEB)** - [Calibre-RDP](https://github.com/janeczku/calibre-web) Loads opt/calibre - a web app providing a clean interface for browsing, reading and downloading eBooks using an existing Calibre database.
- **[CouchPotato](https://couchpota.to)** - Movie manager
- **[deluge](../../wiki/Deluge)** - Deluge torrent client
- **[embystat](https://github.com/mregni/EmbyStat)**
- **funkwhale**
- **gazee** - comic book reader
- **[glances](http://nicolargo.github.io/glances/)** - Please have a look at the [official documentation](https://glances.readthedocs.io/en/latest/).
- **[goplaxt](../../wiki/Goplaxt)** - [goplaxt](https://github.com/XanderStrike/goplaxt) Plex/Trakt Scrobbler
- **Handbrake** - GUI application (no installation or configuration needed on client-side)
- **invoiceninja**
- **jellyfin** - [jellyfin](https://github.com/jellyfin/jellyfin) emby fork
- **kitana** - A responsive Plex plugin web frontend
- **lazylibrarian** - (uses calibre-rdp db)
- **logarr**
- **[mediabutler](../../wiki/Mediabutler)** - Discord bot
- **[medusa](https://pymedusa.com)** - TV Shows manager
- **[mellow](../../wiki/Mellow-Discord-Bot)** - Discord Bot
- **monitorr**
- **[jdownloader2](../../wiki/JDownloader2)** - [JDownloader2](https://github.com/jlesage/docker-jdownloader-2) Self-hosted free, open-source download management tool with GUI website frontend.
- **mylar** - automated comic book downloader
- **[qBittorrent](../../wiki/qBittorrent)** - qBittorrent torrent client
- **radarr1080** - Additional Radarr
- **radarrX** - Similar to [sonarrX](../../wiki/SonarrX) but for radarr, to create multiple roles
- **sonarr1080** - Additional Sonarr
- **sonarrv3** - Sonar phantom (v3) branch based role
- **[sonarrX](../../wiki/SonarrX)** - Experimental Sonarr v3 role to create multiple roles
- **[speedtest](https://github.com/adolfintel/speedtest)** - Self-hosted HTML5 Speedtest
- **subsonic**
- **[telly](../../wiki/Telly)**
- **[transmissionvpn](https://github.com/haugene/docker-transmission-openvpn)**
- **[Wordpress](../../wiki/Wordpress)** - Wordpress deployment
- **[xteve](https://xteve.de/)**
>>>>>>> branch 'develop' of https://github.com/Cloudbox/Community.git
