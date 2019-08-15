#!/bin/bash

DIR='~/Library/Developer/Xcode/DerivedData'
echo -ne "clearing derived data at ${DIR} ..."
rm -fr ${DIR}
echo "done"
