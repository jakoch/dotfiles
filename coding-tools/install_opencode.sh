#!/bin/bash
curl -fsSL https://opencode.ai/install | bash

export PATH=/root/.opencode/bin:$PATH

ls -lahr /root/.opencode/bin/opencode

opencode --version
