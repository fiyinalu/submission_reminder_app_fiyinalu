#!/bin/bash

echo "Creating the Environment..."

dir="$(dirname "$0")"

mkdir -p "$dir/submission_reminder_app"

mkdir -p "$dir/submission_reminder_app/app"

mkdir -p "$dir/submission_reminder_app/modules"

mkdir -p "$dir/submission_reminder_app/config"

mkdir -p "$dir/submission_reminder_app/assets"

rm -rf "$dir/submission_reminder_app/modules/functions.sh"

rm -rf "$dir/submission_reminder_app/app/reminder.sh"

rm -rf "$dir/submission_reminder_app/config/config.env"

rm -rf "$dir/submission_reminder_app/assets/submissions.txt"

touch "$dir/submission_reminder_app/modules/functions.sh"

touch "$dir/submission_reminder_app/app/reminder.sh"

touch "$dir/submission_reminder_app/assets/submissions.txt"

touch "$dir/submission_reminder_app/config/config.env"

cat "$dir/resources/reminder.sh" >> "$dir/submission_reminder_app/app/reminder.sh"

cat "$dir/resources/functions.sh" >> "$dir/submission_reminder_app/modules/functions.sh"

cat "$dir/resources/config.env" >> "$dir/submission_reminder_app/config/config.env"

cp "$dir/resources/submissions.txt" "$dir/submission_reminder_app/assets/submissions.txt"

echo "Fiyin, Shell Navigation, submitted" >> "$dir/submission_reminder_app/assets/submissions.txt"

echo "Kelly, Shell Navigation, submitted" >> "$dir/submission_reminder_app/assets/submissions.txt"

echo "Mustapha, Shell Navigation, submitted" >> "$dir/submission_reminder_app/assets/submissions.txt"

echo "Justin, Shell Navigation, not submitted" >> "$dir/submission_reminder_app/assets/submissions.txt"

echo "Dexter, Shell Navigation, not submitted" >> "$dir/submission_reminder_app/assets/submissions.txt"

chmod u+x "$dir/submission_reminder_app/app/reminder.sh"

chmod u+x "$dir/submission_reminder_app/modules/functions.sh"

echo "Finished creating the Environment..."
