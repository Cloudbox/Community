# Community Repo

Community Repository for Unofficial Cloudbox Add-ons

## Requiremements

- [Cloudbox](https://github.com/Cloudbox/Cloudbox/)


## Clone Repo

```bash
git clone https://github.com/Cloudbox/Community.git ~/community && cd ~/community
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
- **calibre-rdp** - Media path set to `/Media/Books`
- **calibre-web** - Loads opt/calibre  (uses calibre-rdp db)
- **[deluge](../../wiki/Deluge)** - Deluge torrent client
- **lazylibrarian** - (uses calibre-rdp db)
- **logarr**
- **[mellow](../../wiki/Mellow-Discord-Bot)** - Discord Bot
- **monitorr**
- **mylar** - automated comic book downloader
- **radarr1080** - Additional Radarr
- **sonarr1080** - Additional Sonarr
- **sonarrv3** - Sonar phantom (v3) branch based role
- **[sonarrX](../../wiki/SonarrX)** - Experimental Sonarr v3 role to create multiple roles
- **[bitwarden](../../wiki/Bitwarden)** - [Bitwarden](https://bitwarden.com/) self-hosted server.
- **kitana** - A responsive Plex plugin web frontend
- **[qbittorrent](../../wiki/qBitorrent)** - qBitorrent torrent client
