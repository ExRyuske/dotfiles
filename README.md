### Install
```
curl https://raw.githubusercontent.com/ExRyuske/Dotfiles/refs/heads/main/install.sh | sh -s hostname
```

| **Hostname**          | **Description**                   |
| --------------------- | --------------------------------- |
| `bender`              | Main PC                           |
| `jovian`              | Steam Deck LCD                    |
| `anton`               | Packard Bell TE69KB               |
| `vegapunk`            | Virtual Machine                   |


| **Aliases**           | **Description**                   |
| --------------------- | --------------------------------- |
| `mgp`                 | Fast Git Push                     |
| `mnu`                 | Update and Upgrade System         |
| `mhu`                 | Update and Upgrade Home Manager   |

## Launch Options
All Games
```
mangohud --dlsym gamemoderun %command%
```

Online Fix
```
mangohud --dlsym gamemoderun WINEDLLOVERRIDES="OnlineFix64=n;SteamOverlay64=n;winmm=n,b;dnet=n;steam_api64=n;winhttp=n,b" %command%
```

## Tips & Tricks
Online-Fix - https://www.reddit.com/r/LinuxCrackSupport/comments/1cw7v8j/onlinefix_a_complete_guide_to_running_games_with/

GTA V error 134 - https://www.reddit.com/r/SteamDeck/comments/1awzm24/gta_v_error_134_heroic/

CS 2 no sound - https://www.reddit.com/r/linux_gaming/comments/16uc01e/comment/k2larum/
