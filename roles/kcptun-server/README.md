### Ansible role for [kcptun](https://github.com/xtaci/kcptun)
Installs specified version of kcptun from github, configures and starts it.  
Should work on any system with systemd, so basically with any modern linux.

Configurable parameters (default ones):
```
kcptun_version: 20190416
kcptun_checksum: f530f8442cfd8c0f96e57cac191b99c3a9cdd312
kcptun_architecture: amd64
kcptun_target: 127.0.0.1:443
kcptun_server: 0.0.0.0:29990
kcptun_mode: fast
kcptun_crypt: aes
kcptun_dscp: 0
kcptun_parityshard: 3
kcptun_datashard: 10
kcptun_mtu: 1400
kcptun_nocomp: false
kcptun_acknodelay: true
kcptun_rcvwnd: 1024
kcptun_sndwnd: 1024
kcptun_nodelay: 0
kcptun_interval: 50
kcptun_resend: 0
kcptun_nc: 0
kcptun_keepalive: 10
kcptun_sockbuf: 4194304
kcptun_smuxbuf: 4194304
kcptun_key: my_default_password
kcptun_snmplog:
kcptun_snmpperiod: 60
kcptun_pprof: false
kcptun_log:
kcptun_quiet: false
```
