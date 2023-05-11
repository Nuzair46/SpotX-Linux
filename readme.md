<p align="center">
  <a href="https://github.com/SpotX-CLI/SpotX-Linux"><img src="https://raw.githubusercontent.com/SpotX-CLI/SpotX-commons/main/.github/Pic/Logo/logo-linux.png" /></a>
</p>

<p align="center">        
  <a href="https://discord.gg/p43cusgUPm"><img src="https://discord.com/api/guilds/807273906872123412/widget.png"></a>
</p>

***

<center>
  <h2 align="center">SpotX-Linux</h2>
  <h4 align="center">A multi-featured ad blocker for the Spotify Linux application.</h4>
  <p align="center">
    <strong>Last updated:</strong> 20 January 2023<br>
    <strong>Last tested version:</strong> 1.2.3.1115
  </p> 
</center>

## Seeking Collaborators
- We are in need of collaborators to help maintain and improve this project. If you have experience with bash scripting, please create an issue [here](https://github.com/SpotX-CLI/SpotX-Linux/issues) or contact Red.#1111 on Discord.

### Features

- Blocks all banner, video, and audio ads within the Spotify app
- Blocks logging (Sentry, etc.)
- Unlocks the skip function for any track
- Blocks Spotify automatic updates (optional)
- Enables [experimental features](https://github.com/SpotX-CLI/SpotX-Win/discussions/50) (optional)
- Hides podcasts, episodes, and audiobooks on the Home Screen (optional)

### Installation/Update

**Note:** SpotX does not support the Spotify client from Snap.

Close Spotify completely.

Run the following command in the terminal:

```
bash <(curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Linux/main/install.sh)
```

#### Optional Install Arguments

- `-c`: Clear app cache (use if UI-related patches aren't working)
- `-e`: Experimental features (enables experimental features)
- `-E`: Exclude feature (disables specified feature(s)) [currently disabled]
- `-f`: Force patch (forces re-patching if backup is detected)
- `-h`: Hide podcasts, episodes, and audiobooks on the home screen
- `-o`: Old UI (skips forced 'new UI' patch)
- `-P`: Path directory (manually set Spotify directory if not found in PATH)
- `-p`: Premium subscription setup (use if you have a premium subscription)

Use any combination of flags. The following example clears app cache, adds experimental features, and uses the new UI (if supported):

```
bash <(curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Linux/main/install.sh) -ce
```

or

- Reinstall Spotify

### Notes

- SpotX currently does not block audio/video ads during podcast playback.
- For Spicetify users, when using SpotX-Linux + Spicetify, it is recommended to run SpotX first.

### DISCLAIMER

- Ad blocking is the main focus of this repository. Any other features provided by SpotX-Linux or consequences of using those features are the sole responsibility of the user and not the responsibility of BlockThe

### Credits

- Thanks to [SpotX - amd64fox](https://github.com/amd64fox/spotx).
- Thanks to [@jetfir3](https://github.com/jetfir3) for the extended contribution
- Thanks to the peeps on Discord who tested these on various Linux distro's
