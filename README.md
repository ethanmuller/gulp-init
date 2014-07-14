#gulp-init

Very basic Gulp starter project. Coffee, SCSS, and a server with live reload.

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

The rest of the tasks live in `tasks/`. You can run them with `gulp filename`, like `gulp coffee`.

**All your stuff will be processed into `build/`.**

## Important Directories/Files

```
gulpfile.coffee   - Gulp configuration
config.coffee     - Object that is passed to all tasks. Contains common things like file paths.
src/              - Stuff in this directory gets moved or processed, like SCSS or CoffeeScript
tasks/            - Gulp tasks are defined in here

build/            - Processed files go here. You could zip this up and deploy it.
```
