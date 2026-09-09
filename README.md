# Homebrew Tap

Homebrew tap for [BrowserOS neo](https://browseros.com), the browser for agents.

BrowserOS neo is on its way into Homebrew's own cask repository. Until it lands there, this tap is how you install it. Nothing changes for you when it does: the same `brew install --cask browseros-neo` keeps working.

## Install

```sh
brew tap browseros-ai/tap
```

### BrowserOS neo

The browser for agents. A real browser you set up for your agents and sign in to, so they get live logins, cookies, and a persistent profile.

```sh
brew install --cask browseros-neo
```

A universal build covering Apple Silicon and Intel, signed and notarized, requiring macOS 12 (Monterey) or later.

### Looking for BrowserOS?

BrowserOS, the browser for humans, is in Homebrew already and needs no tap:

```sh
brew install --cask browseros
```

## Update

```sh
brew update
brew upgrade --cask browseros-neo
```

BrowserOS neo also updates itself in the background. Homebrew and the built-in updater coexist safely; whichever runs first wins the version bump.

## Uninstall

```sh
brew uninstall --cask browseros-neo          # removes the app
brew uninstall --cask browseros-neo --zap    # also removes profile, cache, preferences
```

`--zap` deletes your browser profile, including its history, cookies, and signed-in sessions. Leave it off if you plan to reinstall.

## How this tap stays fresh

BrowserOS neo publishes a Sparkle appcast that carries the released version and a versioned artifact URL. A scheduled workflow reads that feed, and when the cask is behind it downloads the new build, computes its SHA256, and commits the bump. Nothing needs to be pushed from the product repo.

## Contact

If a cask breaks, file an issue on [browseros-ai/BrowserOS](https://github.com/browseros-ai/BrowserOS/issues). This tap only distributes; it does not build.
