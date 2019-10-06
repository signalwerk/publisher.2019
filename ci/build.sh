#!/bin/bash

echo "-- run npm build"
lead='<!-- page content start-->'
tail='<!-- page content end -->'

## watch -n20 sh build.sh
npm run mdA
npm run mdB
npm run mdC
npm run build
awk 'NR==FNR{new = new $0 ORS; next} /'"$tail"'/{f=0} !f{print} /'"$lead"'/{printf "%s",new; f=1}' ./text/frontend-frameworks/index.html ./dist/index.html > ./dist/frontend-frameworks.html
awk 'NR==FNR{new = new $0 ORS; next} /'"$tail"'/{f=0} !f{print} /'"$lead"'/{printf "%s",new; f=1}' ./text/design-systems/index.html ./dist/index.html > ./dist/design-systems.html
awk 'NR==FNR{new = new $0 ORS; next} /'"$tail"'/{f=0} !f{print} /'"$lead"'/{printf "%s",new; f=1}' ./text/webtypo-space/index.html ./dist/index.html > ./dist/webtypo-space.html
cp ./text/frontend-frameworks/graphics_cmyk.pdf ./dist/frontend-frameworks_graphics_cmyk.pdf
cp ./text/design-systems/graphics_cmyk.pdf ./dist/design-systems_graphics_cmyk.pdf
