FROM titom73/mkdocs AS mkdocsBuild

RUN pip install markupsafe==2.0.1

RUN pip install mkdocs-blog-plugin

WORKDIR /docs

COPY . . 

RUN mkdocs build

FROM mengzyou/bbhttpd:1.35

COPY --from=mkdocsBuild --chown=www:www /docs/site /home/www/html

