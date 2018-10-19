# Community Wiki

https://github.com/Cloudbox/Community/wiki


# Community Repo

Community Repo for addons


## Cloning the Repo:

```bash
git clone https://github.com/Cloudbox/Community.git ~/community
```

## Password File Setup:

If you have setup an Ansible vault password file for Cloudbox, you will need to add its location to `~/community/ansible.cfg`:

1. To edit:
   ```bash
   nano ~/community/ansible.cfg
   ```

2. Add line (with path to your vault password file):
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


## Usage:

```bash
cd ~/community
sudo ansible-playbook community.yml --tags ROLE
```
## Roles:

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
