#!/usr/bin/env bash

#
# Copyright (c) YugaByte, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except
# in compliance with the License.  You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed under the License
# is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
# or implied.  See the License for the specific language governing permissions and limitations
# under the License.
#
# shellcheck source=build-support/common-build-env.sh
. "${BASH_SOURCE[0]%/*}/../build-support/common-build-env.sh"

if [[ -n ${BUILD_ROOT:-} ]]; then
  handle_predefined_build_root_quietly=true
  predefined_build_root=$BUILD_ROOT
  handle_predefined_build_root
fi
detect_brew

if using_linuxbrew; then
  echo "$YB_LINUXBREW_DIR"
fi
