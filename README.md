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

The formula pins public source and bottle archives by SHA-256 checksum. CI tests the normal install command on macOS and Linux, requires installation from a bottle, and verifies that Homebrew Rust and LLVM packages are absent afterward.

For a new version, prepare the source URL/checksum and the release URL in `.github/workflows/bottles.yml` on a release branch, then run the **Build bottles** workflow on that branch. It builds and tests all four native packages and uploads bottle archives and metadata as workflow artifacts. Review those artifacts, publish the archives to the public tap release using the metadata's `filename` values, and update the formula's `bottle` block with the generated checksums and Cellar settings. Publish the assets before merging the formula into `main` so normal installs always have their matching bottles available.
