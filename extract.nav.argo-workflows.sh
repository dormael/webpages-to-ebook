#!/bin/bash

grep href nav.argo-workflows.html |grep -v 'href="#'|grep -v 'href="."'|grep -v 'href="https'|trim.sh|cut -f 2 -d ' '|sed 's/href="//' | sed 's/"$//' | while read -r l; do echo "- https://argoproj.github.io/argo-workflows/${l}"; done
