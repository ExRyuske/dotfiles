## Install
```
curl https://raw.githubusercontent.com/ExRyuske/dotfiles/refs/heads/main/script.sh | sh -s hostname install
```

| **Hostname**          | **Description**                   |
| --------------------- | --------------------------------- |
| `bender`              | Main PC                           |
| `anton`               | Packard Bell TE69KB               |
| `vegapunk`            | Virtual Machine                   |


| **Aliases**           | **Description**                   |
| --------------------- | --------------------------------- |
| `mnu`                 | Update and Upgrade System         |

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

