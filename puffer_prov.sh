#!/bin/bash
set -ex
exec > >(tee /workspace/provision.log) 2>&1
#
cd /workspace/
git clone https://github.com/PufferAI/PufferLib.git
cd PufferLib
uv pip install -e . --no-build-isolation
