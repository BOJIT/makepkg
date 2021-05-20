# makepkg

GitHub Action for building Arch Linux packages and deploying them to GitHub pages.

## Inputs

### `src`

**Required** The directory containing source Arch Linux Packages.

### `dest`

The directory which `.pkg.tar.xz` files are written to.

## Outputs

### `dest`

The time we greeted you.

## Example usage

uses: actions/hello-world-docker-action@v1
with:
  who-to-greet: 'Mona the Octocat'