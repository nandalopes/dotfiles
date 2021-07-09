# System

`sudo -H pip3 install --upgrade youtube-dl wakatime tmuxp pynvim`

# User

`pip3 install --user --upgrade buku poku thefuck`

# Docker

```sh
virtualenv --system-site-packages --clear venv

./venv/bin/pip install --upgrade docker-compose

ln -s $PWD/venv/bin/docker-compose ~/.local/bin/docker-compose
```

