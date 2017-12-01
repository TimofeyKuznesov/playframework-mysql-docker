FROM mysql:5.6

RUN apt-get update && apt-get install -y curl --no-install-recommends && rm -rf /var/lib/apt/lists/*

COPY download-and-start-entrypoint.sh /download-and-start-entrypoint.sh


ENTRYPOINT ["/download-and-start-entrypoint.sh"]
CMD ["mysqld"]
