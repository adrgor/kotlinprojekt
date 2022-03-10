FROM debian

SHELL ["/bin/bash", "-c"]

RUN mkdir -p /apps/KotlinProjekt

COPY . /apps/KotlinProjekt

RUN apt-get update
RUN apt-get install curl -y
RUN apt-get install zip -y
RUN apt-get install unzip -y
RUN apt-get install default-jdk -y
RUN apt-get install gpg -y
RUN apt-get install git -y
RUN apt-get install gradle -y
RUN curl -s "https://get.sdkman.io" | bash
RUN source "/root/.sdkman/bin/sdkman-init.sh"; sdk install kotlin
RUN curl -sSLO https://github.com/pinterest/ktlint/releases/download/0.44.0/ktlint && chmod a+x ktlint && mv ktlint /bin
