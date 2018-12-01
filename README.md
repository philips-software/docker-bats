[![Build Status](https://travis-ci.com/philips-software/bats.svg?branch=master)](https://travis-ci.com/philips-software/bats)
[![Slack](https://philips-software-slackin.now.sh/badge.svg)](https://philips-software-slackin.now.sh)

# Docker images

This repo will contain docker images

Current versions available:
```
.
├── 0.4.0
│   └── alpine
│       └── Dockerfile
├── 1.1.0
│   └── debian
│       └── Dockerfile
```
## Usage

Images can be found on [https://hub.docker.com/r/philipssoftware/bats/](https://hub.docker.com/r/philipssoftware/bats/).

```
docker run -it --rm philipssoftware/bats:0.4.0: bats --version
```

## Content

The images obviously contain openjdk, but also two other files:
- `REPO`
- `TAGS`

### REPO

This file has a url to the REPO with specific commit-sha of the build.
Example: 

```
$ docker run -it --rm philipssoftware/bats:0.4.0 cat REPO
https://github.com/philips-software/bats/tree/036ab9406533105e358ac768a51c1285cf523742
```

### TAGS

This contains all the simular tags at the point of creation. 

```
$ docker run -it --rm philipssoftware/bats:0.4.0 cat TAGS
bats:0.4.0 bats:0.4.0-alpine bats:0.4.0-rc2
```

You can use this to pin down a version of the container from an existing development build for production. When using `bats:10-jdk` for development. This ensures that you've got all security updates in your build. If you want to pin the version of your image down for production, you can use this file inside of the container to look for the most specific tag, the last one.

## Simple Tags

### bats
- `bats:0.4.0`, `bats:0.4.0-alpine`, `bats:0.4.0-rc2` [0.4.0/alpine/Dockerfile](0.4.0/alpine/Dockerfile)
- `bats`, `bats:1.1.0`, `bats:1.1.0-debian` [1.1.0/debian/Dockerfile](1.1.0/debian/Dockerfile)

## Why

> Why do we have our own docker image definitions?

We often need bats to test or scripts. There is no official docker image, so let's make a version for our build pipelines.

## Issues

- If you have an issue: report it on the [issue tracker](https://github.com/philips-software/bats/issues)

## Author

- Jeroen Knoops <jeroen.knoops@philips.com>
- Heijden, Remco van der <remco.van.der.heijden@philips.com>

## License

License is MIT. See [LICENSE file](LICENSE.md)

## Philips Forest

This module is part of the Philips Forest.

```
                                                     ___                   _
                                                    / __\__  _ __ ___  ___| |_
                                                   / _\/ _ \| '__/ _ \/ __| __|
                                                  / / | (_) | | |  __/\__ \ |_
                                                  \/   \___/|_|  \___||___/\__|  

                                                                 Infrastructure
```

Talk to the forestkeepers in the `docker-images`-channel on Slack.

[![Slack](https://philips-software-slackin.now.sh/badge.svg)](https://philips-software-slackin.now.sh)
