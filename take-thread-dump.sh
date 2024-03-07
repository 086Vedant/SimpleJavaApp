#!/bin/bash

# Get the process ID (PID) of the Java process
JAVA_PID=$(jps -l | grep "SimpleJavaApp" | awk '{print $1}')

# Check if the Java process is running
if [ -z "$JAVA_PID" ]; then
    echo "Java process not found."
    exit 1
fi

# Take the thread dump and print it to standard output
jcmd $JAVA_PID Thread.print
# Generate a timestamp for the thread dump filename
#TIMESTAMP=$(date +%Y%m%d%H%M%S)

# Take the thread dump and save it to a file
#THREAD_DUMP_FILE="thread-dump-$TIMESTAMP.txt"
#jcmd $JAVA_PID Thread.dump_to_file "$THREAD_DUMP_FILE"

echo "Thread dump saved to $THREAD_DUMP_FILE"
