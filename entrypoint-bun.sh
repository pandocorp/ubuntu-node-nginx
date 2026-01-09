#!/bin/bash
echo "bun version - ${BUN_VERSION:-$(bun --version)}"
bun --version
echo "node version - ${NODE_VERSION:-$(node --version)}"
node --version
npm --version
service nginx start -d
echo "Going to sleep infinity in order to keep this docker running..."
sleep infinity

