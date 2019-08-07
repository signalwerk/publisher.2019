#!/bin/bash

echo "-- run npm build"
lead='<!-- page content start-->'
tail='<!-- page content end -->'

## watch -n20 sh build.sh
npm run mdA
npm run mdB
npm run build
awk 'NR==FNR{new = new $0 ORS; next} /'"$tail"'/{f=0} !f{print} /'"$lead"'/{printf "%s",new; f=1}' ./text/Frontend-Frameworks/index.html ./dist/index.html > ./dist/frontend-frameworks.html
awk 'NR==FNR{new = new $0 ORS; next} /'"$tail"'/{f=0} !f{print} /'"$lead"'/{printf "%s",new; f=1}' ./text/typo-systems/index.html ./dist/index.html > ./dist/typo-systems.html
cp ./text/Frontend-Frameworks/graphics_cmyk.pdf ./dist/frontend-frameworks_graphics_cmyk.pdf
cp ./text/typo-systems/graphics_cmyk.pdf ./dist/typo-systems_graphics_cmyk.pdf
