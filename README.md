<!---
NOTE: AUTO-GENERATED FILE
to edit this file, instead edit its template at: ./scripts/templates/README.md.j2
-->
<div align="center">



## Rootless

To run these containers as non-root make sure you update your configuration to the user and group you want.

### Docker compose

```yaml
networks:
  sonarr:
    name: sonarr
    external: true
services:
  sonarr:
    image: ghcr.io/onedr0p/sonarr:3.0.8.1507
    container_name: sonarr
    user: 65534:65534
    # ...
```

### Kubernetes

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: sonarr
# ...
spec:
  # ...
  template:
    # ...
    spec:
      # ...
      securityContext:
        runAsUser: 65534
        runAsGroup: 65534
        fsGroup: 65534
        fsGroupChangePolicy: OnRootMismatch
# ...
```

## Passing arguments to a application

Some applications do not support defining configuration via environment variables and instead only allow certain config to be set in the command line arguments for the app. To circumvent this, for applications that have an `entrypoint.sh` read below.

1. First read the Kubernetes docs on [defining command and arguments for a Container](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/).
2. Look up the documentation for the application and find a argument you would like to set.
3. Set the extra arguments in the `args` section like below.

    ```yaml
    args:
      - --port
      - "8080"
    ```

## Configuration volume

For applications that need to have persistent configuration data the config volume is hardcoded to `/config` inside the container. This is not able to be changed in most cases.

## Available Images

Each Image will be built with a `rolling` tag, along with tags specific to it's version. Available Images Below

Container | Channel | Image
--- | --- | ---
[bitwarden-cli](https://github.com/mdallaire/pkgs/container/bitwarden-cli) | stable | ghcr.io/mdallaire/bitwarden-cli
[kubernetes-kubectl](https://github.com/mdallaire/pkgs/container/kubernetes-kubectl) | kubectl | ghcr.io/mdallaire/kubernetes-kubectl
[postgres-init](https://github.com/mdallaire/pkgs/container/postgres-init) | stable | ghcr.io/mdallaire/postgres-init
[toolbox](https://github.com/mdallaire/pkgs/container/toolbox) | 3.20 | ghcr.io/mdallaire/toolbox
[tt-rss](https://github.com/mdallaire/pkgs/container/tt-rss) | stable | ghcr.io/mdallaire/tt-rss
[ubuntu](https://github.com/mdallaire/pkgs/container/ubuntu) | noble | ghcr.io/mdallaire/ubuntu
[waterfurnace-aurora](https://github.com/mdallaire/pkgs/container/waterfurnace-aurora) | stable | ghcr.io/mdallaire/waterfurnace-aurora


