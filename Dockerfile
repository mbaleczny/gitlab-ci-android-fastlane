FROM inovex/gitlab-ci-android:21

RUN apt-get update && apt-get install sudo -y

RUN apt update && apt -y install software-properties-common && apt update

RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update && apt-get -y install --no-install-recommends \
    curl \
    ruby2.6 \
    ruby2.6-dev \
    build-essential \
    file \
    ssh

# Install Fastlane
RUN gem install fastlane -NV

RUN fastlane -v

# Install Make
RUN apt-get update && apt-get install make
