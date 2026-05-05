#!/bin/bash
curl -fsSL https://mistral.ai/vibe/install.sh | bash

export PATH="/root/.local/bin:$PATH"

ls -lahr /root/.local/bin/vibe

vibe --version
