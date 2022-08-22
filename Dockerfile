FROM gitpod/workspace-base

USER gitpod

COPY ./capsule .
COPY ./hello.wasm .
COPY ./start.sh .

ENV MESSAGE $MESSAGE

EXPOSE 8080

ENTRYPOINT ["sh", "-c"]
CMD [ "./start.sh" ]
