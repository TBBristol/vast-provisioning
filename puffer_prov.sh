#!/bin/bash
set -euo pipefail

# log everything to a file (no tee)
exec > /workspace/provision.log 2>&1
set -x

echo "START $(date)"
echo "SHELL=$SHELL"
echo "BASH_VERSION=${BASH_VERSION:-not-bash}"
which uv || true
which git || true
ls -la /venv/main/bin/activate || true

# Activate venv (this is a likely failure point)
source /venv/main/bin/activate

cd /workspace
git clone https://github.com/PufferAI/PufferLib.git
cd PufferLib
uv pip install -e . --no-build-isolation
echo "DONE $(date)"
