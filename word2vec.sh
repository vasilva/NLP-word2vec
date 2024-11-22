make
mkdir -p output
if [ ! -e text8 ]; then
    wget http://mattmahoney.net/dc/text8.zip -O text8.gz
    gzip -d text8.gz -f
fi

time ./word2vec -train text8 -output $1 -size $2 -window $3 -iter $4 -cbow $5 -sample 1e-3 -threads 16 -min-count 5