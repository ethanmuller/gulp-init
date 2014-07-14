#gulp-init

## Requirements

- Gulp (`npm install -g gulp`)
- Probably other stuff that I can't think of.

## Setup

- `npm install`
- `bower install`

## Usage

To build & watch:

```
gulp
```

For a one-off build:

```
gulp build
```

The rest of the tasks live in `tasks/`.

**All your stuff will go into `build/`.**

## Directories

```
src/              - Stuff in this directory gets moved or processed
build/            - This directory is generated after processing everything. This directory is disposable and should not be checked in
tasks/            - Gulp tasks are defined in here
node_modules/     - npm packages
bower_components/ - bower packages
```
