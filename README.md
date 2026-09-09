# Homebrew Tap

Homebrew tap for [BrowserOS](https://browseros.com) and BrowserOS neo.

## Install

```sh
brew tap browseros-ai/tap
```

### BrowserOS neo

The browser for agents. A real browser you set up for your agents and sign in to, so they get live logins, cookies, and a persistent profile.

```sh
brew install --cask browseros-neo
```

### BrowserOS

The browser for humans. An open source Chromium browser with a built-in AI assistant that runs on your own machine.

```sh
brew install --cask browseros
```

Both are universal builds covering Apple Silicon and Intel, signed and notarized. BrowserOS neo needs macOS 12 (Monterey) or later; BrowserOS needs macOS 13 (Ventura) or later.

## Update

```sh
brew update
brew upgrade --cask browseros-neo
```

Both browsers also update themselves in the background. Homebrew and the built-in updater coexist safely; whichever runs first wins the version bump.

## Uninstall

```sh
brew uninstall --cask browseros-neo          # removes the app
brew uninstall --cask browseros-neo --zap    # also removes profile, cache, preferences
```

`--zap` deletes your browser profile, including its history, cookies, and signed-in sessions. Leave it off if you plan to reinstall.

## How this tap stays fresh

Both products publish a Sparkle appcast that carries the released version and a versioned artifact URL. A scheduled workflow reads those feeds, and when a cask is behind it downloads the new build, computes its SHA256, and commits the bump. Nothing needs to be pushed from the product repo.

## Contact

If a cask breaks, file an issue on [browseros-ai/BrowserOS](https://github.com/browseros-ai/BrowserOS/issues). This tap only distributes; it does not build.
