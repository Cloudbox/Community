# Community Repo

Community Repository for Unofficial Cloudbox Add-ons

## Requiremements

- [Cloudbox](https://github.com/Cloudbox/Cloudbox/)


## Clone Repo

```bash
git clone https://github.com/Cloudbox/Community.git ~/community && cd ~/community && cp -n ansible.cfg.default ansible.cfg && cp -n settings.yml.sample settings.yml
```

For directly adding the develop branch:
```bash
git clone -b develop https://github.com/Cloudbox/Community.git ~/community && cd ~/community && cp -n ansible.cfg.default ansible.cfg && cp -n settings.yml.sample settings.yml
```

## Password File

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

- **airsonic**
- **beets**
- **[bitwarden](../../wiki/Bitwarden)** - [Bitwarden](https://bitwarden.com/) self-hosted server.
- **calibre-rdp** - Media path set to `/Media/Books`
- **calibre-web** - Loads opt/calibre  (uses calibre-rdp db)
- **[deluge](../../wiki/Deluge)** - Deluge torrent client
- **embystats**
- **gazee** - comic book reader
- **[goplaxt](../../wiki/Goplaxt)** - [goplaxt](https://github.com/XanderStrike/goplaxt) Plex/Trakt Scrobbler
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
- **telly2**
- **[varken](../../wiki/Varken)** - [Varken](https://github.com/Boerderij/Varken) role with influxdb and grafana dockers
