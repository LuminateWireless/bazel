#!/bin/bash
echo $@
INTERPRETER=$(which $1)
shift
if [[ $(basename $INTERPRETER) == "python2" ]]; then
    PLINK=plink.py
else
    PLINK=plink3.py
fi
exec $INTERPRETER tools/python/$PLINK --python-binary "$INTERPRETER -ESs" $@
