# V2 Addons can be built with anything.

The default [v2 addon blueprint](https://github.com/embroider-build/addon-blueprint) uses [rollup](https://rollupjs.org/) and [@embroider/addon-dev](https://github.com/embroider-build/embroider/tree/main/packages/addon-dev) -- but these things are not required. They exist as a convinience to abstract away the complexities in managing native npm packages.


This repo demonstrates how you can still make an ember-compatible v2 addon (native npm package), without any of the above tools.

This demo uses `make` and `watch make` for build and watch mode

## Usage 

just run `make`
- installs node, pnpm
- installs deps 
- builds the addon

## Requirements 

- make - the build tool
- procmail - managing lockfiles
- [volta](https://volta.sh/) - node tooling manager


### MacOS 

Have homebrew install 
```bash 
brew install procmail
```

### Ubuntu 

```bash 
sudo apt install procmail
```
