<!---
NOTE: AUTO-GENERATED FILE
to edit this file, instead edit its template at: ./github/scripts/templates/README.md.j2
-->
<div align="center">

## Credits

Most of the logic and structure of this repo comes from the excellent [https://github.com/onedr0p/containers] and other forks of it.

## Credits from the original repo
A lot of inspiration and ideas are thanks to the hard work of [hotio.dev](https://hotio.dev/) and [linuxserver.io](https://www.linuxserver.io/) contributors.

## Containers

_A Collection of Container Images Optimized for Kubernetes_

</div>

<div align="center">

![GitHub Repo stars](https://img.shields.io/github/stars/mdallaire/containers?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/mdallaire/containers?style=for-the-badge)
![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/mdallaire/containers/release-scheduled.yaml?style=for-the-badge&label=Scheduled%20Release)

</div>

Welcome to our container images, if looking for a container start by [browsing the container packages](https://github.com/mdallaire?tab=packages&repo_name=containers).

## Mission statement

The goal of this project is to support [semantically versioned](https://semver.org/), [rootless](https://rootlesscontaine.rs/), and [multiple architecture](https://www.docker.com/blog/multi-arch-build-and-images-the-simple-way/) containers for various applications.

We also try to adhere to a [KISS principle](https://en.wikipedia.org/wiki/KISS_principle), logging to stdout, [one process per container](https://testdriven.io/tips/59de3279-4a2d-4556-9cd0-b444249ed31e/), no [s6-overlay](https://github.com/just-containers/s6-overlay) and all images are built on top of [Alpine](https://hub.docker.com/_/alpine) or [Ubuntu](https://hub.docker.com/_/ubuntu).

## Tag immutability

The containers built here do not use immutable tags, as least not in the more common way you have seen from [linuxserver.io](https://fleet.linuxserver.io/) or [Bitnami](https://bitnami.com/stacks/containers).

We do take a similar approach but instead of appending a `-ls69` or `-r420` prefix to the tag we instead insist on pinning to the sha256 digest of the image, while this is not as pretty it is just as functional in making the images immutable.

| Container                                          | Immutable |
|----------------------------------------------------|-----------|
| `ghcr.io/mdallaire/sonarr:rolling`                   | ❌         |
| `ghcr.io/mdallaire/sonarr:3.0.8.1507`                | ❌         |
| `ghcr.io/mdallaire/sonarr:rolling@sha256:8053...`    | ✅         |
| `ghcr.io/mdallaire/sonarr:3.0.8.1507@sha256:8053...` | ✅         |

_If pinning an image to the sha256 digest, tools like [Renovate](https://github.com/renovatebot/renovate) support updating the container on a digest or application version change._

## Passing arguments to a application

Some applications do not support defining configuration via environment variables and instead only allow certain config to be set in the command line arguments for the app. To circumvent this, for applications that have an `entrypoint.sh` read below.

1. First read the Kubernetes docs on [defining command and arguments for a Container](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/).
2. Look up the documentation for the application and find a argument you would like to set.
3. Set the argument in the `args` section, be sure to include `entrypoint.sh` as the first arg and any application specific arguments thereafter.

    ```yaml
    args:
      - /entrypoint.sh
      - --port
      - "8080"
    ```

## Configuration volume

For applications that need to have persistent configuration data the config volume is hardcoded to `/config` inside the container. This is not able to be changed in most cases.

## Available Images

Each Image will be built with a `rolling` tag, along with tags specific to it's version. Available Images Below

Container | Channel | Image | Latest Tags
--- | --- | --- | ---
[emby](https://github.com/mdallaire/containers/pkgs/container/emby) | stable | ghcr.io/mdallaire/emby |![4](https://img.shields.io/badge/4-blue?style=flat-square) ![4.7](https://img.shields.io/badge/4.7-blue?style=flat-square) ![4.7.14](https://img.shields.io/badge/4.7.14-blue?style=flat-square) ![4.7.14.0](https://img.shields.io/badge/4.7.14.0-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[home-assistant](https://github.com/mdallaire/containers/pkgs/container/home-assistant) | stable | ghcr.io/mdallaire/home-assistant |![2023.12.1](https://img.shields.io/badge/2023.12.1-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[hydroqc2mqtt](https://github.com/mdallaire/containers/pkgs/container/hydroqc2mqtt) | stable | ghcr.io/mdallaire/hydroqc2mqtt |![1](https://img.shields.io/badge/1-blue?style=flat-square) ![1.1](https://img.shields.io/badge/1.1-blue?style=flat-square) ![1.1.0](https://img.shields.io/badge/1.1.0-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[kubernetes-kubectl](https://github.com/mdallaire/containers/pkgs/container/kubernetes-kubectl) | kubectl | ghcr.io/mdallaire/kubernetes-kubectl |![1.28.4](https://img.shields.io/badge/1.28.4-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[parsedmarc](https://github.com/mdallaire/containers/pkgs/container/parsedmarc) | stable | ghcr.io/mdallaire/parsedmarc |![8](https://img.shields.io/badge/8-blue?style=flat-square) ![8.6](https://img.shields.io/badge/8.6-blue?style=flat-square) ![8.6.4](https://img.shields.io/badge/8.6.4-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[postgres-init](https://github.com/mdallaire/containers/pkgs/container/postgres-init) | stable | ghcr.io/mdallaire/postgres-init |![15](https://img.shields.io/badge/15-blue?style=flat-square) ![15.5](https://img.shields.io/badge/15.5-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[tt-rss](https://github.com/mdallaire/containers/pkgs/container/tt-rss) | stable | ghcr.io/mdallaire/tt-rss |![2.0.9426](https://img.shields.io/badge/2.0.9426-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[waterfurnace-aurora](https://github.com/mdallaire/containers/pkgs/container/waterfurnace-aurora) | stable | ghcr.io/mdallaire/waterfurnace-aurora |![1.4.8](https://img.shields.io/badge/1.4.8-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)


## Contributing

1. Install [Docker](https://docs.docker.com/get-docker/), [Taskfile](https://taskfile.dev/) & [Cuelang](https://cuelang.org/)
2. Get familiar with the structure of the repositroy
3. Find a similar application in the apps directory
4. Copy & Paste an application and update the directory name
5. Update `metadata.json`, `Dockerfile`, `ci/latest.sh`, `ci/goss.yaml` and make it suit the application build
6. Include any additional files if required
7. Use Taskfile to build and test your image

    ```ruby
    task APP=sonarr CHANNEL=main test
    ```

### Automated tags

Here's an example of how tags are created in the GitHub workflows, be careful with `metadata.json` as it does affect the outcome of how the tags will be created when the application is built.

| Application | Channel   | Stable  | Base    | Generated Tag               |
|-------------|-----------|---------|---------|-----------------------------|
| `ubuntu`    | `focal`   | `true`  | `true`  | `ubuntu:focal-rolling`      |
| `ubuntu`    | `focal`   | `true`  | `true`  | `ubuntu:focal-19880312`     |
| `alpine`    | `3.16`    | `true`  | `true`  | `alpine:rolling`            |
| `alpine`    | `3.16`    | `true`  | `true`  | `alpine:3.16.0`             |
| `sonarr`    | `develop` | `false` | `false` | `sonarr-develop:3.0.8.1538` |
| `sonarr`    | `develop` | `false` | `false` | `sonarr-develop:rolling`    |
| `sonarr`    | `main`    | `true`  | `false` | `sonarr:3.0.8.1507`         |
| `sonarr`    | `main`    | `true`  | `false` | `sonarr:rolling`            |

## Deprecations

Containers here can be **deprecated** at any point, this could be for any reason described below.

1. The upstream application is **no longer actively developed**
2. The upstream application has an **official upstream container** that follows closely to the mission statement described here
3. The upstream application has been **replaced with a better alternative**
4. The **maintenance burden** of keeping the container here **is too bothersome**

**Note**: Deprecated containers will remained published to this repo for 6 months after which they will be pruned.



