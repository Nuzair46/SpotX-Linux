## I'm busy with life and other projects. I don't get enough free time to commit to this project anymore. For now, I will archive this project until further notice. To keep using this, please try to use the last tested version and stay in that version with the block updates option. If you are interested in maintaining this project, please contact me on Discord. Thanks for sticking with this project.

<p align="center">        
      <a href="https://discord.gg/eYudMwgYtY"><img src="https://discord.com/api/guilds/807273906872123412/widget.png"></a>
      </p>

***

<center>
    <h4 align="center">A multi-featured adblocker for the Spotify Linux application.</h4>
    <p align="center">
        <strong>Last updated:</strong> 03 July 2023<br>
        <strong>Last tested version:</strong> 1.2.3.1115
    </p> 
</center>

## We need collaborators.
- We are running short of people who can collaborate and maintain this project. If you are good with bash scripting, please create an issue here or contact Red.#1111 in discord.

### Features:

- Blocks all banner/video/audio ads within the app
- Blocks logging (Sentry, etc)
- Unlocks the skip function for any track
- Blocks Spotify automatic updates (optional)
- Enables [experimental features](https://github.com/SpotX-CLI/SpotX-Win/discussions/50) (optional)
- Hides podcasts, episodes and audiobooks on Home Screen (optional)

### Installation/Update:

NOTE: SpotX does not support the Spotify client from Snap 
- Close Spotify completely.
- Run The following command in Terminal:

```
bash <(curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Linux/main/install.sh)
```

#### Flatpak Version
To install on the Flatpak version of Spotify:
```
bash <(curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Linux/main/install.sh) -P /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify/
```

#### Optional Install Arguments:
`-c`  Clear app cache -- use if UI-related patches aren't working  
`-e`  Experimental features -- enables experimental features  
`-E`  Exclude feature -- disables specified feature(s) [currently disabled]  
`-f`  Force patch -- forces re-patching if backup detected  
`-h`  Hide podcasts, episodes and audiobooks on home screen  
`-o`  Old UI -- skips forced 'new UI' patch  
`-P`  Path directory -- manually set Spotify directory if not found in PATH  
`-p`  Premium subscription setup -- use if premium subscriber  

Use any combination of flags.  
The following example clears app cache, adds experimental features and uses the new UI (if supported):
    
```
bash <(curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Linux/main/install.sh) -ce
```

### Uninstall:

- Close Spotify completely.
- Run The following command in Terminal:

```
bash <(curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Linux/main/uninstall.sh)
```

or

- Reinstall Spotify

### Notes:

- Audio/video ads during Podcast playback are currently NOT blocked with SpotX.
- Spicetify users: When using SpotX-Linux + Spicetify, the current script requires running SpotX first.

### DISCLAIMER

- Ad blocking is the main concern of this repo. Any other feature provided by SpotX-Linux or consequence of using those features will be the sole responsibility of the user, not BlockTheSpot/SpotX/SpotX-CLI/SpotX-Linux.

### Credits

- Thanks to [SpotX - amd64fox](https://github.com/amd64fox/spotx).
- Thanks to [@jetfir3](https://github.com/jetfir3) for the extended contribution
- Thanks to the peeps on Discord who tested these on various Linux distro's
