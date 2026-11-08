# Homebrew tap

Public Homebrew packages maintained by [funkydude755](https://github.com/funkydude755).

## Install sbar

With [Homebrew](https://brew.sh) installed on macOS or Linux:

```sh
brew install funkydude755/tap/sbar
sbar
```

Homebrew adds this public tap automatically. Prebuilt bottles are available for Apple Silicon and Intel Macs on macOS 15 or newer, and for Linux on x86-64 and ARM64. Normal bottle installs do not need Rust or LLVM. No GitHub account or organization access is required.

On platforms without a compatible bottle, or when using `--build-from-source`, Homebrew builds the tagged release and installs Rust and its build dependencies. Older Linux distributions may also need Homebrew's runtime libraries.

If `sbar` is already installed from another tap, run `brew uninstall sbar` before installing it from this tap.

To update:

```sh
brew update
brew upgrade funkydude755/tap/sbar
```

See the [sbar repository](https://github.com/funkydude755/sbar) for usage and terminal compatibility.

## Maintenance

The formula pins public source and bottle archives by SHA-256 checksum. Builds and installation checks run locally; GitHub Actions is disabled.

For a new version, build and test bottles for Apple Silicon and Intel macOS, and ARM64 and x86-64 Linux. Verify that normal installation pours a bottle without installing Rust or LLVM. Publish the four archives and checksums before merging the formula's source URL, bottle checksums, and Cellar settings into `main`.
