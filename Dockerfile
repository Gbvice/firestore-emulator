FROM google/cloud-sdk:latest

COPY entrypoint /entrypoint

RUN chmod +x /entrypoint

ENTRYPOINT [ "/entrypoint" ]
