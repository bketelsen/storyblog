HUGO_VERSION=${1:-0.47.1}

wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz
tar -zxvf hugo*
rm -rf hugo*.tar.gz
