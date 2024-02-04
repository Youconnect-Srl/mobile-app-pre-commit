#!/bin/bash
# sort all .arb files

dart pub global activate arb_utils > /dev/null
export PATH="$PATH":"$HOME/.pub-cache/bin"
for i; do
    echo "sort file: ${i}"
    arb_utils sort -i "${i}"
done
