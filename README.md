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
[bitwarden-cli](https://github.com/mdallaire/containers/pkgs/container/bitwarden-cli) | stable | ghcr.io/mdallaire/bitwarden-cli |![2024](https://img.shields.io/badge/2024-blue?style=flat-square) ![2024.9](https://img.shields.io/badge/2024.9-blue?style=flat-square) ![2024.9.0](https://img.shields.io/badge/2024.9.0-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[home-assistant](https://github.com/mdallaire/containers/pkgs/container/home-assistant) | stable | ghcr.io/mdallaire/home-assistant |![2024.10.1](https://img.shields.io/badge/2024.10.1-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[kubernetes-kubectl](https://github.com/mdallaire/containers/pkgs/container/kubernetes-kubectl) | kubectl | ghcr.io/mdallaire/kubernetes-kubectl |![1.31.1](https://img.shields.io/badge/1.31.1-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[parsedmarc](https://github.com/mdallaire/containers/pkgs/container/parsedmarc) | stable | ghcr.io/mdallaire/parsedmarc |![8](https://img.shields.io/badge/8-blue?style=flat-square) ![8.15](https://img.shields.io/badge/8.15-blue?style=flat-square) ![8.15.1](https://img.shields.io/badge/8.15.1-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[postgres-init](https://github.com/mdallaire/containers/pkgs/container/postgres-init) | stable | ghcr.io/mdallaire/postgres-init |![16](https://img.shields.io/badge/16-blue?style=flat-square) ![16.3](https://img.shields.io/badge/16.3-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[toolbox](https://github.com/mdallaire/containers/pkgs/container/toolbox) | 3.20 | ghcr.io/mdallaire/toolbox |![3.20.3](https://img.shields.io/badge/3.20.3-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[tt-rss](https://github.com/mdallaire/containers/pkgs/container/tt-rss) | stable | ghcr.io/mdallaire/tt-rss |![2.0.9526](https://img.shields.io/badge/2.0.9526-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[ubuntu](https://github.com/mdallaire/containers/pkgs/container/ubuntu) | jammy | ghcr.io/mdallaire/ubuntu |![jammy-20240911.1](https://img.shields.io/badge/jammy--20240911.1-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[waterfurnace-aurora](https://github.com/mdallaire/containers/pkgs/container/waterfurnace-aurora) | stable | ghcr.io/mdallaire/waterfurnace-aurora |![1.4.8](https://img.shields.io/badge/1.4.8-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)
[weewx](https://github.com/mdallaire/containers/pkgs/container/weewx) | stable | ghcr.io/mdallaire/weewx |![5](https://img.shields.io/badge/5-blue?style=flat-square) ![5.1](https://img.shields.io/badge/5.1-blue?style=flat-square) ![5.1.0](https://img.shields.io/badge/5.1.0-blue?style=flat-square) ![rolling](https://img.shields.io/badge/rolling-blue?style=flat-square)


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

## Deprecations

Containers here can be **deprecated** at any point, this could be for any reason described below.

1. The upstream application is **no longer actively developed**
2. The upstream application has an **official upstream container** that follows closely to the mission statement described here
3. The upstream application has been **replaced with a better alternative**
4. The **maintenance burden** of keeping the container here **is too bothersome**

**Note**: Deprecated containers will remained published to this repo for 6 months after which they will be pruned.



