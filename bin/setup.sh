HUGO_VERSION=${1:-0.73.0}
ARCH=${2:-Linux}


wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_${ARCH}-64bit.tar.gz
tar -zxvf hugo*
rm -rf hugo*.tar.gz
