FROM ubuntu:20.04


ENV JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
ENV ANDROID_SDK_ROOT="/usr/tools/Android/Sdk"
ENV GRADLE_HOME="/usr/share/gradle"


WORKDIR /usr/workdir 


# Installing dependencies and tools from apt:
RUN apt update -y 
RUN apt upgrade -y

RUN apt install openjdk-8-jdk openjdk-8-jre -y
RUN apt install gradle -y
RUN apt install wget -y
RUN apt install unzip -y


# Creating directory tree:
RUN mkdir -p /usr/tools/Android
RUN mkdir -p /usr/tools/Android/Sdk


# Setting up android sdk and build tools:
RUN wget https://dl.google.com/android/repository/commandlinetools-linux-6858069_latest.zip
RUN unzip commandlinetools* -d /usr/tools/Android
RUN yes | /usr/tools/Android/cmdline-tools/bin/sdkmanager "build-tools;29.0.2" "platforms;android-29" --sdk_root="/usr/tools/Android/Sdk"


# Installing npm and cordova cli:
RUN apt install npm -y
RUN npm install -g cordova 
RUN cordova telemetry off


ENTRYPOINT ["cordova"]
