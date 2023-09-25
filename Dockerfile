FROM ubuntu
COPY Country.mmdb /root/.config/clash/
COPY clash-linux-amd64-2023.08.17 1684721759516.yml ./
ENTRYPOINT ["./clash-linux-amd64-2023.08.17", "-f", "1684721759516.yml"]