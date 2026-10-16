#!/bin/bash
set -euo pipefail
mkdir -p /app
cat > /app/solution.py <<'PY'
def add(a, b):
    return a + b
PY
