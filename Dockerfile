FROM bketelsen/hugobuilder as builder
RUN mkdir -p /var/www/blog
COPY . /var/www/blog
WORKDIR /var/www/blog
RUN hugo -t story
FROM nginx
COPY --from=builder /var/www/blog/public/ /usr/share/nginx/html
