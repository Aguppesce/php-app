FROM joaquinsr/php-app-db

ENV MYSQL_ROOT_PASSWORD=rootpass \
    MYSQL_DATABASE=sample \
    MYSQL_USER=sampleuser \
    MYSQL_PASSWORD=samplepass

EXPOSE 3306/tcp

COPY startup.sh /startup.sh
RUN chmod +x /startup.sh

ENTRYPOINT ["/startup.sh"]
