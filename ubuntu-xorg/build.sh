#docker build . --build-arg "ALL_PROXY=socks5://127.0.0.1:7891" --build-arg "HTTP_PROXY=http://127.0.0.1:7890" --build-arg "HTTPS_PROXY=http://127.0.0.1:7890" --network host --rm --no-cache --pull -t ubuntu-xorg
#docker build . --build-arg "ALL_PROXY=socks5://127.0.0.1:7891" --build-arg "HTTP_PROXY=http://127.0.0.1:7890" --build-arg "HTTPS_PROXY=http://127.0.0.1:7890" --rm --pull -t ubuntu-xorg:18.04
docker build . --rm --no-cache --pull --squash -t ubuntu-xorg:18.04
