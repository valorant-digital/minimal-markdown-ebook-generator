FROM titom73/mkdocs AS mkdocsBuild

WORKDIR /docs

####

RUN pip install markupsafe==2.0.1

##RUN pip install mkdocs-blog-plugin

####

COPY . . 

RUN mkdocs build

####

FROM mengzyou/bbhttpd:latest

COPY --from=mkdocsBuild --chown=www:www /docs/site /home/www/html

