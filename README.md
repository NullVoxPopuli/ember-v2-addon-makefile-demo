# V2 Addons can be built with anything.

The default [v2 addon blueprint](https://github.com/embroider-build/addon-blueprint) uses [rollup](https://rollupjs.org/) and [@embroider/addon-dev](https://github.com/embroider-build/embroider/tree/main/packages/addon-dev) -- but these things are not required. They exist as a convinience to abstract away the complexities in managing native npm packages.


This repo demonstrates how you can still make an ember-compatible v2 addon (native npm package), without any of the above tools.

This demo uses `make` and `watch make` for build and watch mode
