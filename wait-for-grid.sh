#!/bin/bash
# wait-for-grid.sh

set -e

cmd="$@"

echo 'Waiting for the Grid'
while ! ../check-grid.sh --host selenium-hub >/dev/null; do
    echo 'Waiting for the Grid'
    sleep 1
done

>&2 echo "Selenium Grid is up - executing tests"
exec $cmd
