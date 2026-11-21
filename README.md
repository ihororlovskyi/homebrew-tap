# homebrew-tap

Homebrew tap for [ihororlovskyi](https://github.com/ihororlovskyi) projects.

## Install

```zsh
brew tap ihororlovskyi/tap
brew install --cask sysbar
brew install --cask chytanka
```

## Casks

- [`sysbar`](Casks/sysbar.rb) - tiny macOS menu-bar monitor for Apple Silicon (CPU/GPU/RAM).
- [`chytanka`](Casks/chytanka.rb) - menu bar app that reads the selected text aloud in Ukrainian.

## Releases

The `sysbar` cask is bumped automatically by the
[`release` workflow](https://github.com/ihororlovskyi/sysbar/blob/main/.github/workflows/release.yml)
in `ihororlovskyi/sysbar` whenever a `v*` tag is pushed. The `chytanka` cask is
bumped by hand for now.
