#!/bin/bash
set -uo pipefail
mkdir -p /logs/verifier
python3 -c "from solution import add; assert add(2,3)==5" > /logs/verifier/out.txt 2>&1 && echo 1 > /logs/verifier/reward.txt || echo 0 > /logs/verifier/reward.txt
cat /logs/verifier/out.txt || true
[ "$(cat /logs/verifier/reward.txt)" = "1" ]
