FROM alpine:3.10

RUN curl "https://download-cf.jetbrains.com/resharper/ReSharperUltimate.2019.3.4/JetBrains.ReSharper.CommandLineTools.Unix.2019.3.4.tar.gz" > resharper-cli.tar.gz \
    && tar -xf resharper-cli.tar.gz -C /resharper

ENTRYPOINT [ "/resharper/inspectcode.sh" ]