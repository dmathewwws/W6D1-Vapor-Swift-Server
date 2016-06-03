FROM ubuntu:14.04

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install curl -y

RUN curl -O https://swift.org/builds/development/ubuntu1404/swift-DEVELOPMENT-SNAPSHOT-2016-05-31-a/swift-DEVELOPMENT-SNAPSHOT-2016-05-31-a-ubuntu14.04.tar.gz

RUN tar -zxf swift-DEVELOPMENT-SNAPSHOT-2016-05-31-a-ubuntu14.04.tar.gz

RUN export PATH=swift-DEVELOPMENT-SNAPSHOT-2016-05-31-a-ubuntu14.04/usr/bin/:"${PATH}"

#tar -zxvf swift-DEVELOPMENT-SNAPSHOT-2016-05-31-a-ubuntu14.04.tar.gz

# RUN mkdir server
#
# ADD . /server
# WORKDIR /server
#
CMD [ "swift" ]
