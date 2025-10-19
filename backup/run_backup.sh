#!/bin/bash
restic -r rclone:proton-drive:_backups:fairewinds-pc backup $HOME \
  -e $HOME/Games \
  -e $HOME/.local/share/Steam/steamapps \
  -e $HOME/.cache

