# Project 02: Docker CI and Delivery

A static Nginx website packaged as a Docker image. GitHub Actions builds and checks the image on pushes and pull requests. After a successful push to `main`, the workflow publishes the image to GitHub Container Registry (GHCR). The published image is then deployed to an Ubuntu VM with a deliberate manual step.

## Project structure

- `Dockerfile` builds the Nginx image and labels its source repository.
- `site/index.html` is the page served by Nginx.
- `.github/workflows/ci.yml` builds and checks the image, then publishes it to GHCR on pushes to `main`.

## CI and image publishing

On pushes and pull requests, GitHub Actions builds the image, starts a test container, and checks that the served page contains `Docker CI pipeline`.

When a push to `main` passes those checks, the workflow publishes two GHCR tags:

- `latest` for the current published image
- The commit SHA, to identify the source revision for that image

The package is public and can be pulled without signing in.

## Deploy to the Ubuntu VM

Pull the published image:

```bash
sudo docker pull ghcr.io/zaidmohd6521-lang/project-02-docker-ci:latest
