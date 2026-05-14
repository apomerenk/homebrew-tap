# homebrew-tap

Personal Homebrew tap for [apomerenk](https://github.com/apomerenk) projects.

## Install

```sh
brew tap apomerenk/tap
```

## Casks

### github-notifications-menu-bar

Tiny macOS menu-bar app for GitHub unread-notification count. Source: [apomerenk/github-notification-menu-bar](https://github.com/apomerenk/github-notification-menu-bar).

```sh
brew install --cask github-notifications-menu-bar
```

The cask is auto-bumped by a workflow in the source repo whenever a labeled PR is merged. Don't edit `version` / `sha256` here by hand — the next release will overwrite the change.
