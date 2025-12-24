#!/bin/bash

#
cd /workspace/
git clone https://github.com/PufferAI/PufferLib.git
cd PufferLib
uv pip install -e . --no-build-isolation
