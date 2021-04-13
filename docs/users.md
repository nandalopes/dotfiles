# Contas de usuário

**Default user**

- **uid=1000(default)** gid=1000(default)
- groups=1000(default),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),122(lpadmin),
131(lxd),132(sambashare),998(docker),134(vboxusers)

**Family guests**

- **uid=1001(family)** gid=1001(family)
- groups=1001(family),100(users)

**Alternate work default** (optional)

- **uid=1002(alternate)** gid=1002(alternate)
- groups=1002(alternate),4(adm),27(sudo),100(users),1000(default),998(docker),
134(vboxusers)

# Batch usermod

```sh
for u (default alternate); \
  sudo usermod $u --shell /bin/zsh \
  -aG "default,alternate,docker,vboxusers,adm"
```
