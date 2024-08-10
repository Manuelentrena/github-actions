#!/bin/sh
echo "::debug::Running entrypoint.sh"
echo "Hello, $1!"
echo "INPUT since env, $INPUT_WHO_TO_GREET"
echo "HELLO since env, $HELLO"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
echo "HELLO_TIME=$time" >> $GITHUB_ENV