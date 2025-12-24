#!/bin/bash
set -ex
exec > >(tee /workspace/provision.log) 2>&1

# Cause the script to exit on failure.
set -eo pipefail

# Activate the main virtual environment
. /venv/main/bin/activate

#
cd /workspace/
git clone https://github.com/PufferAI/PufferLib.git
cd PufferLib
uv pip install -e . --no-build-isolation
