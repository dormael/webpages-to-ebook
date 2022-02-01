#!/bin/bash

grep href nav.argo-rollouts.html |grep -v 'href="#'|grep -v 'href="."'|grep -v 'href="https'|trim.sh|cut -f 2 -d ' '|sed 's/href="//' | sed 's/"$//' | while read -r l; do echo "- https://argoproj.github.io/argo-rollouts/${l}"; done
