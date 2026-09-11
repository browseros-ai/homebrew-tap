# BrowserOS Homebrew Tap

Homebrew tap for **BrowserOS neo**, the browser for agents.

| Product | What it is | Where it comes from |
|---|---|---|
| **BrowserOS neo** | Browser for agents | This tap |
| **BrowserOS** | Browser for humans | Homebrew itself, no tap needed |

The two install differently, so each one is written out in full below. Copy either block whole.

## Install BrowserOS neo

A real browser you set up for your agents and sign in to, so they get live logins, cookies, and a persistent profile.

```sh
brew tap browseros-ai/tap
brew install --cask browseros-neo
```

Universal build for Apple Silicon and Intel, signed and notarized. Requires macOS 12 (Monterey) or later.

> BrowserOS neo is on its way into Homebrew's own cask repository. Until it lands, this tap is how you install it, and nothing changes for you when it does: the same `brew install --cask browseros-neo` keeps working.

## Install BrowserOS

The browser for humans, with an AI agent built in. It is already in Homebrew, so there is no tap to add and nothing from this repository is involved:

```sh
brew install --cask browseros
```

That is the [official cask](https://formulae.brew.sh/cask/browseros), maintained in [Homebrew/homebrew-cask](https://github.com/Homebrew/homebrew-cask/blob/HEAD/Casks/b/browseros.rb) and updated automatically on each release. This tap deliberately does not carry a `browseros` cask, so there is one source for it rather than two that can drift.

## Update

```sh
brew update
brew upgrade --cask browseros-neo
```

BrowserOS neo also updates itself in the background. Homebrew and the built-in updater coexist safely; whichever runs first wins the version bump.

## Uninstall

```sh
brew uninstall --cask browseros-neo
```

That removes the app and leaves your profile alone. To remove the profile as well:

```sh
brew uninstall --cask browseros-neo --zap
```

> `--zap` deletes your browser profile, including history, cookies, and every signed-in session your agents rely on. Leave it off if you plan to reinstall.

## How this tap stays fresh

BrowserOS neo publishes a Sparkle appcast carrying the released version and a versioned artifact URL. A scheduled workflow reads that feed, and when the cask is behind it downloads the new build, computes its SHA256, and commits the bump. Nothing needs to be pushed from the product repository.

## Contact

If a cask breaks, file an issue on [browseros-ai/BrowserOS](https://github.com/browseros-ai/BrowserOS/issues). This tap only distributes; it does not build.
