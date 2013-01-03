#!/bin/bash
set -u -e -E -C -o pipefail

OUTDIR=out

SEQS=$(ls -1 $OUTDIR/*.JPG | sed "s/-.*$//" | sort -u)
COLORS=$(ls -1 $OUTDIR/*.JPG | sed "s/^.*-//;s/.JPG//" | sort -u)

INDEX=$OUTDIR/index.inc
rm -f $INDEX

exec 3>&1 1> $INDEX
echo "<table>"
echo "<tr><th/>"
for thisCOLOR in $COLORS; do
    echo "<th>$thisCOLOR</th>"
done
echo "</tr>"
for thisSEQ in $SEQS; do
    echo "<tr><th>$(basename $thisSEQ)</th>"
    for thisIMG in $thisSEQ*; do
        echo "<td><img src=\"$thisIMG\"/></td>"
    done
    echo "</tr>"
done
echo "</table>"

exec 1>&3

echo "
Point your web browser to the pearl photo lightroom url:
file://$(pwd)/index.html
"
