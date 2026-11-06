# Homebrew tap

Public Homebrew packages maintained by [funkydude755](https://github.com/funkydude755).

## Install sbar

With [Homebrew](https://brew.sh) installed on macOS or Linux:

```sh
brew install funkydude755/tap/sbar
sbar
```

Homebrew adds this public tap automatically and builds the tagged source release. No GitHub account or organization access is required. Rust is installed as a build dependency if needed.

If `sbar` is already installed from another tap, run `brew uninstall sbar` before installing it from this tap.

To update:

```sh
brew update
brew upgrade funkydude755/tap/sbar
```

See the [sbar repository](https://github.com/funkydude755/sbar) for usage and terminal compatibility.

## Maintenance

The formula pins a public release archive by version and SHA-256 checksum. CI builds and tests the formula on macOS and Linux.
