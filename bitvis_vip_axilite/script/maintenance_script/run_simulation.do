#================================================================================================================================
# Copyright 2020 Bitvis
# Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0 and in the provided LICENSE.TXT.
#
# Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
# an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and limitations under the License.
#================================================================================================================================
# Note : Any functionality not explicitly described in the documentation is subject to change at any time
#--------------------------------------------------------------------------------------------------------------------------------

set library 0
set testbench 0
set run_test 0
set generic1 0

if { [info exists 1] } {
  set library "$1"
  unset 1
}

if { [info exists 2] } {
  set testbench "$2"
  unset 2
}

if { [info exists 3] } {
  set run_test "$3"
  unset 3
}

if { [info exists 4] } {
  set generic1 "$4"
  unset 4
}


vsim -gGC_TESTCASE=$run_test -gGC_DELTA_DELAYED_VVC_CLK=$generic1 $library.$testbench

run -all