[![Discord](https://discord.com/api/guilds/807273906872123412/widget.png)](https://discord.gg/p43cusgUPm)

<center>
    <h1 align="center">SpotX for Linux</h1>
    <h4 align="center">A multi-purpose adblocker and skip-bypass for the Spotify Linux application.</h4>
    <h5 align="center">Please support Spotify by purchasing premium</h5>
    <p align="center">
        <strong>Last updated:</strong> 20 October 2022<br>
        <strong>Last tested version:</strong> 1.1.84.716
    </p> 
</center>

### Features:

- Blocks all banner/video/audio ads within the app
- Retains friend, vertical video and radio functionality
- Unlocks the skip function for any track
- Enables [experimental features](https://github.com/SpotX-CLI/SpotX-Win/discussions/50) (optional)

### Installation/Update:

- Close Spotify completely.
- Run The following command in Terminal:

```
bash <(curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Linux/main/install.sh)
```

#### Optional Install Arguments:
`-c`  Clear app cache -- use if UI-related patches aren't working  
`-e`  Experimental features -- enables experimental features  
`-f`  Force patch -- forces re-patching if backup detected  
`-p`  Premium subscription setup -- use if premium subscriber  

Use any combination of flags.  
The following example clears app cache and adds experimental features:
    
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

### DISCLAIMER

- Ad blocking is the main concern of this repo. Any other feature provided by SpotX-Linux or consequence of using those features will be the sole responsibility of the user and not either BlockTheSpot or SpotX, SpotX-Linux team will be responsible.

### Credits

- Thanks to [SpotX - amd64fox](https://github.com/amd64fox/spotx).
