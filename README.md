# Project 02: Docker CI with GitHub Actions

A Dockerized Nginx website with a GitHub Actions workflow that builds the image and checks that the page is served correctly.

## Project structure

- `Dockerfile` builds the Nginx image.
- `site/index.html` is the web page served by Nginx.
- `.github/workflows/ci.yml` builds and tests the image on pushes and pull requests.

## Run locally

Build the image:

```bash
sudo docker build -t project-02-docker-ci:local .
