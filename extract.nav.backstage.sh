#!/bin/bash

grep href nav.backstage.html |grep -v 'href="#'|grep -v 'href="."'|sed 's/class\=\".*\" //'|trim.sh|sed 's/">/" >/'|cut -f 2 -d ' '|sed 's/href="//' | sed 's/"$//' | while read -r l; do echo "- https://backstage.io${l}"; done
