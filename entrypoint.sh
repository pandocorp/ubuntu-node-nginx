#!/bin/bash
echo "node version - ${NODE_VERSION}"
node --version
service nginx start -d
echo "Going to sleep infinity in order to keep this docker running..."
sleep infinity
