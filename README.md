# firestore-emulator


Docker image based on [*google/cloud-sdk:latest*](https://hub.docker.com/r/google/cloud-sdk/)

## Required Environment Variables
**PORT**: Host port of firestore emulator start-up

**PROJECT_ID**: Firestore emulator project id

## Run

```
 docker run -p 8001:8001 -e PORT=8001 -e PROJECT_ID=test docker.pkg.github.com/gbvice/firestore-emulator/firestore-emulator:main
```

Because of the need of authentication on [docker.pkg.github.com](https://github.community/t/docker-pull-from-public-github-package-registry-fail-with-no-basic-auth-credentials-error/16358/86), to pull the image localy, it is necessary to run:

```
 docker login -u $GITHUB_USERNAME -p $GITHUB_TOKEN docker.pkg.github.com
```

The GITHUB_TOKEN must have access *read:packages*

**For a more secutiry access use --password-stdin
