#!/bin/bash

dir="$(dirname "$0")"

"$dir/../create_environment.sh"

echo "Starting The Reminder App Now..."

"$dir/app/reminder.sh"
