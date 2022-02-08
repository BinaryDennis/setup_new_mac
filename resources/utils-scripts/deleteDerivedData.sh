#!/bin/bash

DIR='~/Library/Developer/Xcode/DerivedData'
echo -ne "deleting derived data at ${DIR} ..."
rm -fr ${DIR}
echo "done"
