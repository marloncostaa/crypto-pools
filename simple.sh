sudo apt-get update && sudo apt-get install git make automake screen libcurl4-openssl-dev

git clone https://github.com/wolf9466/cpuminer-multi

cd cpuminer-multi

./autogen.sh

CFLAGS="-march=native" ./configure --disable-aes-ni 

make

screen -S miner ./minerd -a cryptonight -o stratum+tcp://pool.minexmr.com:4444 -u 42tyvLxdZ2ahTkftTMZzx1EbSDfiathtU8NHs2TrHWNPHQjCdnnAJU8hdB4fSKpaCd4i5ZvpiSrPLegXpdsb9bMmJM9kv3T.9719e8183f32822d3210894efef58b6f1934c6225b12960c232be668057cd3e6 -p x -1
