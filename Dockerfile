FROM alpine

#ENV TZ=Asia/Shanghai
#
#RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
#
#RUN apk --no-cache add tzdata zeromq \
#    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
#    && echo '$TZ' > /etc/timezone
#
#COPY ./rsa /opt/huodong/rsa/
#COPY ./configs/config.toml  /opt/huodong/configs/config.toml
COPY ./testDockerBuild   /opt/testDockerBuild/

WORKDIR /opt/testDockerBuild

EXPOSE 8080
CMD ["./testDockerBuild"]

