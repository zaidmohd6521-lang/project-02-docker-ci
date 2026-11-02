FROM nginx:alpine
LABEL org.opencontainers.image.source="https://github.com/zaidmohd6521-lang/project-02-docker-ci"
COPY site/index.html /usr/share/nginx/html/index.html
