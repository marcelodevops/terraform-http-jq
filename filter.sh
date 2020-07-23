#!/bin/bash
function check_deps() {
  test -f $(which jq) || error_exit "jq command not detected in path, please install it"
}
check_deps
OUTPUT=$(echo $1 | jq -r '.items[] | select(.mask | startswith("255"))' | grep "cidr" | awk '{print $2  }')
jq -n --arg output "cidr"  "{$OUTPUT}" 