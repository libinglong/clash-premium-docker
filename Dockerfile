FROM harbor.intra.ke.com/appcenter/application/ubuntu-dev:v1.0.5
RUN apt install -y ca-certificates && update-ca-certificates
COPY Country.mmdb /root/.config/clash/
COPY clash-linux-amd64-2023.08.17 1684721759516.yml ./
ENTRYPOINT ["./clash-linux-amd64-2023.08.17", "-f", "1684721759516.yml"]