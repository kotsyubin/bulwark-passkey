#!/bin/bash

set -e

cd proto
make all
cd ..

cd frontend
npm install && npm run build
cd ..

cp -r frontend/build app/frontend_dist
cd app
if ! pkg-config --exists webkit2gtk-4.0; then
   wails build -s -skipbindings -debug -tags webkit2_41
else
    wails build -s -skipbindings -debug
fi
cd ..
mkdir output
mv app/build/bin/bulwark_passkey output/