#!/bin/bash
function check_deps() {
  test -f $(which jq) || error_exit "jq command not detected in path, please install it"
}
check_deps
