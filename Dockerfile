FROM mcr.microsoft.com/dotnet/core/sdk:3.1

RUN curl -sf -o resharper-cli.tar.gz -L "https://download-cf.jetbrains.com/resharper/ReSharperUltimate.2019.3.4/JetBrains.ReSharper.CommandLineTools.Unix.2019.3.4.tar.gz" \
    && mkdir -p /resharper \
    && tar -xf resharper-cli.tar.gz -C /resharper \
    && rm resharper-cli.tar.gz

ENTRYPOINT [ "/resharper/inspectcode.sh" ]