#!/bin/bash


info=$(curl -Ss 'https://wttr.in?0&T&Q')
echo $info

weather=$(echo $info|perl -pe 's/(\A[a-zA-Z]+)\+.*/$1/')
echo $weather


#curl -Ss 'https://wttr.in?0&T&Q' | xargs echo |perl -pe 's/(\d+. *°C)(.*k    m\/h)\s+(\d+\s+km)/$1$2$3/'
