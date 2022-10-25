  <p align="center">
  <a href="https://github.com/SpotX-CLI/SpotX-Linux"><img src="https://github.com/SpotX-CLI/SpotX-Linux/raw/main/.github/Pic/logo.png" />
</p>

<p align="center">        
      <a href="https://t.me/spotify_windows_mod"><img src="https://raw.githubusercontent.com/SpotX-CLI/SpotX-Linux/main/.github/Pic/Shields/tg.svg"></a>
      <a href="https://discord.gg/p43cusgUPm"><img src="https://discord.com/api/guilds/807273906872123412/widget.png"></a>
      </p>

***

<center>
    <h4 align="center">A multi-featured adblocker for the Spotify desktop client for Linux.</h4>
    <p align="center">
        <strong>Last updated:</strong> 20 October 2022<br>
        <strong>Last tested version:</strong> 1.1.84.716
    </p> 
</center>

### Features:

- Blocks all banner/video/audio ads within the app
- Blocks logging (Sentry, etc)
- Unlocks the skip function for any track
- Enables some experimental features (optional)

### Installation/Update:

NOTE: SpotX does not support the Spotify client from Snap 
- Close Spotify completely.
- Run The following command in Terminal:

```
bash <(curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Linux/jet-test-flatpak-1/install.sh)
```

#### Optional Install Arguments:
`-c`  Clear app cache -- use if UI-related patches aren't working  
`-e`  Experimental features -- enables experimental features  
`-f`  Force patch -- forces re-patching if backup detected  
`-P`  Path directory -- manually set Spotify directory if not found in PATH  
`-p`  Premium subscription setup -- use if premium subscriber  

Use any combination of flags.  
The following example clears app cache and adds experimental features:
    
```
bash <(curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Linux/jet-test-flatpak-1/install.sh) -ce
```


### Uninstall:

- Close Spotify completely.
- Run The following command in Terminal:

```
bash <(curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Linux/main/uninstall.sh)
```

or

- Reinstall Spotify

### DISCLAIMER

- Ad blocking is the main concern of this repo. Any other feature provided by SpotX-Linux or consequence of using those features will be the sole responsibility of the user, not BlockTheSpot/SpotX/SpotX-CLI/SpotX-Linux.

### Credits

- Thanks to [SpotX - amd64fox](https://github.com/amd64fox/spotx).
