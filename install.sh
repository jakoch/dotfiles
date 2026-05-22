#!/bin/bash
set -euo pipefail

exec "$(dirname "$0")/debian/install_packages.sh"
